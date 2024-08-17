import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';
import 'package:servicemen_listing/core/services/c_toast.dart';
import 'package:servicemen_listing/core/services/local_storage_services.dart';
import 'package:servicemen_listing/core/utils/di/injection.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/widgets/c_button.dart';
import 'package:servicemen_listing/features/app_root/presentation/views/app_root.dart';
import 'package:servicemen_listing/features/authetication/application/authetication_bloc.dart';
import 'package:servicemen_listing/features/authetication/domain/model/create_user_model.dart';
import 'package:servicemen_listing/features/authetication/presentation/widgets/c_text_field.dart';
import 'package:servicemen_listing/features/authetication/presentation/widgets/create_user_success_dilogue.dart';

class RegistertionScreen extends StatefulWidget {
  const RegistertionScreen({super.key});

  @override
  State<RegistertionScreen> createState() => _RegistertionScreenState();
}

class _RegistertionScreenState extends State<RegistertionScreen> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();

  final localStorageService = sl<LocalStorageServices>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context
        .read<AutheticationBloc>()
        .add(const AutheticationEvent.clearCreateUserData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AutheticationBloc, AutheticationState>(
      listener: (context, state) {
        if (state.createUserResult != null) {
          state.createUserResult!.fold(
            (l) {
              CToast.error(context, message: "An error occured:${l.errorMsg}");
            },
            (r) {
              localStorageService.setLoginStatus(true);
              context
                  .read<AutheticationBloc>()
                  .add(const AutheticationEvent.clearCreateUserData());
              log("User created successfully");
              CNaviagtion.pushAndRemoveUntil(context, const AppRoot());
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (ctx) => CreateUserSuccessDilogue(ctx: ctx),
              );
            },
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.scaffoldBg,
          appBar: AppBar(
            backgroundColor: AppColors.scaffoldBg,
            surfaceTintColor: AppColors.scaffoldBg,
            elevation: 0,
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            leadingWidth: 50,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 12),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xffE5E7EB), width: 1),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 17,
                ),
              ),
            ),
            centerTitle: true,
            title: const Text("Get Started",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  // color: AppColors.primaryColor,
                )),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                color: AppColors.grayText,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: .3,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: Gap(16),
                  ),
                  const SliverToBoxAdapter(
                    child: Text("Let’s know more\nabout you",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primaryColor,
                        )),
                  ),
                  const SliverToBoxAdapter(
                    child: Gap(9),
                  ),
                  const SliverToBoxAdapter(
                    child: Text(
                      "Provide basic information to setup your \naccount",
                      style: TextStyle(color: Color(0xff5C5C5C), fontSize: 14),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Gap(20),
                  ),
                  const SliverToBoxAdapter(
                    child: Text(" Name",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  const SliverToBoxAdapter(
                    child: Gap(8),
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: CTextField(
                          controller: firstNameController,
                          hintText: "First name",
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return "First name is required";
                            }
                            return null;
                          },
                        )),
                        const Gap(16),
                        Expanded(
                            child: CTextField(
                          controller: lastNameController,
                          hintText: "Last name",
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return "Last name is required";
                            }
                            return null;
                          },
                        )),
                      ],
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Gap(20),
                  ),
                  const SliverToBoxAdapter(
                    child: Text(" Email Address",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  const SliverToBoxAdapter(
                    child: Gap(8),
                  ),
                  SliverToBoxAdapter(
                    child: CTextField(
                      controller: emailController,
                      hintText: "Enter your email address",
                      keyBordType: TextInputType.emailAddress,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "Email address is required";
                        }
                        final RegExp emailRegExp = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        );

                        if (!emailRegExp.hasMatch(p0)) {
                          return "Please enter a valid email address";
                        }

                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            color: AppColors.scaffoldBg,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: CButton(
                radius: 14,
                height: 48,
                width: double.infinity,
                onPressed: () {
                  final isValid = _formKey.currentState!.validate();
                  if (!isValid || state.createUserLoading) return;

                  final creatUserModel = CreateUserModel(
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      email: emailController.text,
                      phoneNumber: state.phoneNumber);
                  context
                      .read<AutheticationBloc>()
                      .add(AutheticationEvent.createUser(creatUserModel));
                },
                child: state.createUserLoading
                    ? const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CupertinoActivityIndicator(
                            color: AppColors.grayText,
                          ),
                          Gap(8),
                          Text(
                            "Please wait...",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grayText,
                            ),
                          ),
                        ],
                      )
                    : const Text(
                        "Finish setup",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )),
          ),
        );
      },
    );
  }
}
