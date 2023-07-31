import 'package:flutter/material.dart';
import 'package:th/features/home/widgets/post_message.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.alternate_email,
                size: 45,
              ),
              SizedBox(height: 5),
              PostMessage()
              // Image.asset(
              //   'assets/images/thread.png',
              //   height: 100,
              //   width: 100,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
