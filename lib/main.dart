import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:servicemen_listing/core/utils/app_detail.dart';
import 'package:servicemen_listing/core/utils/di/injection.dart';
import 'package:servicemen_listing/core/utils/theme/app_fonts.dart';
import 'package:servicemen_listing/features/app_root/application/app_root_bloc.dart';
import 'package:servicemen_listing/features/authetication/application/authetication_bloc.dart';
import 'package:servicemen_listing/features/authetication/domain/i_authetication_facade.dart';
import 'package:servicemen_listing/features/category/application/category_bloc.dart';
import 'package:servicemen_listing/features/category/domain/i_category_facade.dart';
import 'package:servicemen_listing/features/onbording/application/on_bording_bloc.dart';
import 'package:servicemen_listing/features/saved_service_men/application/saved_service_men_bloc.dart';
import 'package:servicemen_listing/features/saved_service_men/domain/i_saved_service_men_facade.dart';
import 'package:servicemen_listing/features/splash/presentation/views/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependency();
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

        //AUTHETICATION BLOC
        BlocProvider(
            create: (_) => AutheticationBloc(sl<IAutheticationFacade>())),

        //CATEGORY BLOC
        BlocProvider(create: (_) => CategoryBloc(sl<ICategoryFacade>())),

        //SAVED SERVICE MEN BLOC
        BlocProvider(
            create: (_) => SavedServiceMenBloc(sl<ISavedServiceMenFacade>())),
      ],
      child: MaterialApp(
        title: AppDetails.appName,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: AppFonts.ubuntu,
        ),
        home: SplashScreen(),
        // home: const SignInScreen(),
      ),
    );
  }
}
