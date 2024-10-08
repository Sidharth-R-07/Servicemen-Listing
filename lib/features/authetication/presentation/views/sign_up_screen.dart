import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';
import 'package:servicemen_listing/core/services/c_toast.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_images.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/widgets/c_button.dart';
import 'package:servicemen_listing/features/authetication/application/authetication_bloc.dart';
import 'package:servicemen_listing/features/authetication/presentation/views/sign_in_screen.dart';
import 'package:servicemen_listing/features/authetication/presentation/widgets/c_phone_field.dart';
import 'package:servicemen_listing/features/authetication/presentation/widgets/otp_bottom_sheet.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _phoneController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    context
        .read<AutheticationBloc>()
        .add(const AutheticationEvent.clearPhoneVerificationData());
    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff14B4CA),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Gap(size.height * 0.17)),
          SliverToBoxAdapter(
            child: Center(
              child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.white.withOpacity(.08),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(.16),
                  radius: 65,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white.withOpacity(.32),
                    child: Opacity(
                      opacity: 0.8,
                      child: Image.asset(
                        AppImages.signUp,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: BlocConsumer<AutheticationBloc, AutheticationState>(
        listener: (context, state) {
          if (state.phoneVerificationresult != null) {
            state.phoneVerificationresult!.fold(
              (error) {
                context
                    .read<AutheticationBloc>()
                    .add(const AutheticationEvent.clearPhoneVerificationData());
                CToast.error(context, message: error.errorMsg);
              },
              (sucess) {
                context
                    .read<AutheticationBloc>()
                    .add(const AutheticationEvent.clearPhoneVerificationData());

                if (state.phoneVerificationRespones?.user == true) {
                  CToast.info(context,
                      message: "User already exist, Please login");
                  return;
                }

                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (ctx) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(ctx).viewInsets.bottom),
                    child: const OtpBottomSheet(
                      isSignUp: true,
                    ),
                  ),
                );
              },
            );
          }
        },
        builder: (context, state) {
          return Container(
            height: 380,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome to Swift \nService!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8),
                Text(
                  "Sign up to simplify your services.",
                  style: TextStyle(
                      fontSize: 13.5, color: Colors.black.withOpacity(.64)),
                ),
                const Gap(20),
                const Text("Enter phone number",
                    style: TextStyle(fontSize: 14)),
                const Gap(10),
                CPhoneField(
                  controller: _phoneController,
                ),
                const Gap(28),
                CButton(
                  width: double.infinity,
                  height: 48,
                  radius: 16,
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    context.read<AutheticationBloc>()
                      ..add(AutheticationEvent.setPhoneNumber(
                          _phoneController.text))
                      ..add(const AutheticationEvent.verifyPhoneNumber(
                          isSignUp: true));
                  },
                  child: state.phoneVerificationLoading
                      ? const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CupertinoActivityIndicator(
                              color: AppColors.grayText,
                            ),
                            Gap(8),
                            Text("Loading...",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.grayText,
                                )),
                          ],
                        )
                      : const Text(
                          "Receive Verification Code",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                ),
                const Gap(6),

                //SIGN UP
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.60),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        CNaviagtion.pushReplacement(
                            context, const SignInScreen());
                      },
                      child: const Text(
                        "Signin",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.buttonColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
