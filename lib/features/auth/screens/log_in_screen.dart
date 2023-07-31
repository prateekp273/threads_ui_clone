import 'package:flutter/material.dart';
import 'package:th/features/auth/screens/log_in_screen_details.dart';
import 'package:th/theme/pallete.dart';

class LogInScreen extends StatefulWidget {
  static const routeName = '/login';
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController loginController = TextEditingController();

  navigateToLogInDetails() {
    Navigator.of(context).pushNamed(LogInScreenDetails.routeName);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Image.asset(
                'assets/images/multithread.png',
                height: 400,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            //  const SizedBox(height: 60),
            GestureDetector(
              onTap: navigateToLogInDetails,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ).copyWith(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Pallete.whiteColoor, width: 2),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Log In With Instagram'),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/insta.jpeg',
                          height: 50,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
