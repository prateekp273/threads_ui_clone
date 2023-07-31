import 'package:flutter/material.dart';
import 'package:th/core/commons/custom_button.dart';
import 'package:th/features/home/screens/home_screen.dart';

import '../../../theme/pallete.dart';

class SaveInfoLogInScreen extends StatelessWidget {
  static const routeName = '/saveinfoscreen';
  const SaveInfoLogInScreen({super.key});

  navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Save your login Info?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Text(
                'We\'ll save the login info for PrateekPatel, so you won\'t need to enter it next time you log in ',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Pallete.whiteColoor,
                    width: 2,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Divider(
                      thickness: 2,
                      endIndent: 1,
                      indent: 1,
                    ),
                    CustomButton(
                        onPressed: () {
                          navigateToHomeScreen(context);
                        },
                        text: 'Save',
                        color: Pallete.blueColor),
                    const SizedBox(height: 10),
                    CustomButton(
                      onPressed: () {
                        navigateToHomeScreen(context);
                      },
                      text: 'Not now',
                      color: Pallete.transparent,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
