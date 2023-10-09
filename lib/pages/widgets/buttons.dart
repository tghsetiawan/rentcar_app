import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CustomInputButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const CustomInputButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: numberBackgroundColor,
        ),
        child: Center(
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFilledActionButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final String onPressed;
  final VoidCallback onAction;

  const CustomFilledActionButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    required this.onPressed,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onAction();
        Navigator.pushNamed(context, onPressed);
      },
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 17, fontWeight: semiBold),
          ),
        ),
      ),
    );
  }
}

class ButtonRoundedCallbackWidget extends StatelessWidget {
  final String label, to;
  final Color color;
  final bool isFull;
  final double padding;
  final double fontSize;
  final VoidCallback callback;

  const ButtonRoundedCallbackWidget(
      {Key? key,
      required this.label,
      required this.to,
      this.color = Colors.blue,
      this.isFull = false,
      this.padding = 0,
      this.fontSize = 16,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback();
        Navigator.pushNamed(context, to);
      },
      child: Container(
        width: isFull ? double.infinity : 150,
        padding: EdgeInsets.symmetric(vertical: padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            label,
            style: whiteTextStyle.copyWith(fontWeight: bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class ButtonRoundedWidget extends StatelessWidget {
  final String label, to;
  final Color color;
  final bool isFull;
  final double padding;
  final double fontSize;

  const ButtonRoundedWidget(
      {Key? key,
      required this.label,
      required this.to,
      this.color = Colors.blue,
      this.isFull = false,
      this.padding = 0,
      this.fontSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, to);
      },
      child: Container(
        width: isFull ? double.infinity : 150,
        padding: EdgeInsets.symmetric(vertical: padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            label,
            style: whiteTextStyle.copyWith(
                color: Colors.white, fontSize: fontSize),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
