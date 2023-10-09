import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/images.dart';
import 'package:rentcar_app/models/user_model.dart';
import 'package:rentcar_app/pages/widgets/buttons.dart';
import 'package:rentcar_app/pages/widgets/forms.dart';
import 'package:rentcar_app/shared/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController inputFirstNameController =
        TextEditingController(text: 'Teguh');
    TextEditingController inputLastNameController =
        TextEditingController(text: 'Setiawan');

    saveData() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      UserModel user = UserModel(
        firstName: inputFirstNameController.text,
        lastName: inputLastNameController.text,
      );
      await prefs.setString("auth_user", jsonEncode(user));
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: lightBackgroundColor,
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    logo,
                    width: 176,
                    height: 133,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    title: 'First Name',
                    isShowTitle: false,
                    controller: inputFirstNameController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    title: 'Last Name',
                    isShowTitle: false,
                    controller: inputLastNameController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // CustomFilledButton(
                  //   title: "Login!",
                  //   onPressed: () {
                  //     Navigator.pushReplacementNamed(context, '/home');
                  //   },
                  // ),
                  CustomFilledActionButton(
                    title: "Login!",
                    onAction: () {
                      saveData();
                    },
                    onPressed: '/home',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
