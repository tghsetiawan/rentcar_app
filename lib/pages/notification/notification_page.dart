import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/images.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Image.asset(
            imageComingSoon,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
