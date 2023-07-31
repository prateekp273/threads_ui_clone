import 'package:flutter/material.dart';
import 'package:th/core/commons/custom_button.dart';

import '../../../theme/pallete.dart';

class SearchPeople extends StatelessWidget {
  const SearchPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(
          'assets/images/insta.jpeg',
        ),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'CreedCodes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Creed Codes',
          ),
          SizedBox(height: 5),
          Text(
            '2.1M followers',
          ),
        ],
      ),
      trailing: Container(
        height: 30,
        width: 100,
        child: CustomButton(
            onPressed: () {}, text: 'Follow', color: Pallete.transparent),
      ),
    );
  }
}
