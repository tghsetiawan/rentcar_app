import 'package:flutter/material.dart';
import 'package:rentcar_app/shared/theme.dart';

class HomeTopBrandItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeTopBrandItem({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 70,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Image.asset(
            iconUrl,
            width: 35,
          ),
        ),
      ),
    );
  }
}
