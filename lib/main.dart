import 'package:flutter/material.dart';
import 'package:rentcar_app/pages/detailcar/detail_page.dart';
import 'package:rentcar_app/pages/login/login_page.dart';
import 'package:rentcar_app/pages/main_page.dart';
import 'package:rentcar_app/pages/onboarding/onboarding_page.dart';
import 'package:rentcar_app/pages/splashscreen/splashscreen_page.dart';
import 'package:rentcar_app/pages/success/success_page.dart';
import 'package:rentcar_app/shared/theme.dart';
import 'package:rentcar_app/utils/detail_car_arg.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: blackColor),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => const OnBoardingScreenPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const MainPage(),
        '/success-page': (context) => const SuccessPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final args = settings.arguments as DetailCarArg;
          return MaterialPageRoute(
            builder: (context) {
              return DetailPage(
                carModel: args.carModel,
              );
            },
          );
        }
        return null;
      },
    );
  }
}
