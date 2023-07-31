import 'package:flutter/material.dart';
import 'package:th/core/commons/custom_button.dart';
import 'package:th/core/commons/custom_textformfield.dart';
import 'package:th/features/auth/screens/save_info_screen.dart';

import '../../../theme/pallete.dart';

class LogInScreenDetails extends StatefulWidget {
  static const routeName = '/loginscreen';
  const LogInScreenDetails({super.key});

  @override
  State<LogInScreenDetails> createState() => _LogInScreenDetailsState();
}

class _LogInScreenDetailsState extends State<LogInScreenDetails> {
  final TextEditingController _emailController = TextEditingController();

  navigateToSaveInfoScreen() {
    Navigator.of(context).pushNamed(SaveInfoLogInScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Column(
            children: [
              const Text('English(US)'),
              const SizedBox(height: 40),
              SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/insta.jpeg',
                      height: 60, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 100),
              CustomTextFormField(
                hintText: 'Username, email or mobile number',
                controller: _emailController,
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Password',
                controller: _emailController,
              ),
              const SizedBox(height: 15),
              CustomButton(
                onPressed: navigateToSaveInfoScreen,
                text: 'Log In',
                color: Pallete.blueColor,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/meta2.png',
                          height: 40,
                          width: 60,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
