import 'package:flutter/material.dart';
import 'package:rentcar_app/pages/widgets/buttons.dart';
import 'package:rentcar_app/shared/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Penyewaan Mobil Berhasil',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 20),
            CustomFilledButton(
              title: 'Back to Home',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              width: 183,
            ),
          ],
        ),
      ),
    );
  }
}
