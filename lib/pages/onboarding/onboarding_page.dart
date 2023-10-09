import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/images.dart';
import 'package:rentcar_app/pages/widgets/buttons.dart';
import 'package:rentcar_app/shared/theme.dart';

class OnBoardingScreenPage extends StatelessWidget {
  const OnBoardingScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageBoarding1), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Text(
              'Find and\nrental car in\neasy steps.',
              style: whiteTextStyle.copyWith(fontSize: 50),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomFilledButton(
                title: "Let's Go!",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
