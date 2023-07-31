import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PostMessage extends StatelessWidget {
  const PostMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/prateek.jpg'),
            ),
            title: const Text('Creed Codes'),
            subtitle: const SizedBox(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello We are almost there!!!!'),
                SizedBox(height: 10),
                SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite),
                      Icon(IconlyLight.chat),
                      Icon(Icons.repeat),
                      Icon(Icons.share),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text('1721 replies . 865 likes'),
                // Row(
                //   children: [
                //     const Text('1721 replies'),
                //     const Text('.'),
                //     const Text('865 likes'),
                //   ],
                // ),
              ],
            )),
            trailing: Container(
                height: 30,
                width: 60,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('13m'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.more_horiz)
                  ],
                )),
          )
        ],
      ),
    );
  }
}
