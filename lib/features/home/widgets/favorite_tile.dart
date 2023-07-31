import 'package:flutter/material.dart';
import 'package:th/core/commons/custom_button.dart';
import 'package:th/theme/pallete.dart';

class FavoriteTile extends StatelessWidget {
  const FavoriteTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/threads2.jpeg'),
        ),
        title: const Text('threads  5h'),
        subtitle: const Text('Followed you'),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Pallete.transparent,
              side: BorderSide(color: Pallete.whiteColoor, width: 2)),
          child: const Text('Following'),
        ));
  }
}
