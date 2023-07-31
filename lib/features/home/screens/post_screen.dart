import 'package:flutter/material.dart';
import 'package:th/theme/pallete.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
                const Text('New Thread'),
                const Divider(
                  thickness: 3,
                )
              ],
            ),
            ListTile(
              leading: const Column(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/threads.png'),
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage('assets/images/threads.png'),
                  )
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('PrateekPatel'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Start a thread...',
                      border: InputBorder.none,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.attach_file_outlined)),
                  const Text(
                    'Add a Thread',
                    style: TextStyle(fontSize: 14, color: Pallete.whiteColoor),
                  )
                ],
              ),
            ),
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Anyone can reply'),
                    Text(
                      'Post',
                      style: TextStyle(color: Pallete.blueColor),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
