import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:servicemen_listing/core/utils/app_detail.dart';
import 'package:servicemen_listing/core/utils/di/injection.dart';
import 'package:servicemen_listing/core/utils/theme/app_fonts.dart';
import 'package:servicemen_listing/features/app_root/application/app_root_bloc.dart';
import 'package:servicemen_listing/features/authetication/presentation/views/sign_in_screen.dart';
import 'package:servicemen_listing/features/authetication/presentation/views/sign_up_screen.dart';
import 'package:servicemen_listing/features/onbording/application/on_bording_bloc.dart';
import 'package:servicemen_listing/features/splash/presentation/views/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //ON BORDING BLOC
        BlocProvider(create: (_) => OnBordingBloc()),

        //APP ROOT BLOC
        BlocProvider(create: (_) => AppRootBloc()),
      ],
      child: MaterialApp(
        title: AppDetails.appName,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: AppFonts.ubuntu,
        ),
        // home: const SplashScreen(),
        home: const SignInScreen(),
      ),
    );
  }
}
