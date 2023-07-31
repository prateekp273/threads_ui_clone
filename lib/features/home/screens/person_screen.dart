import 'package:flutter/material.dart';
import 'package:th/theme/pallete.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({super.key});
  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.language,
                    size: 25,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/instagramIcon.png',
                          height: 30, width: 30),
                      const Icon(
                        Icons.segment_sharp,
                        size: 25,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'PRATEEK PATEL',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Row(
                children: [
                  Text('prateek patel'),
                  SizedBox(width: 4),
                  Chip(
                    label: Text('threads.net'),
                    labelPadding: EdgeInsets.all(3),
                  )
                ],
              ),
              const Text('1,234 followers'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    backgroundColor: Pallete.blackColor,
                    side: BorderSide(width: 1, color: Pallete.whiteColoor),
                    label: Text('Edit Profile'),
                    labelStyle: TextStyle(
                      color: Pallete.whiteColor,
                    ),
                  ),
                  Chip(
                    backgroundColor: Pallete.blackColor,
                    side: BorderSide(width: 1, color: Pallete.whiteColoor),
                    label: Text('Share Profile'),
                    labelStyle: TextStyle(
                      color: Pallete.whiteColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const DefaultTabController(
                length: 2,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 1,
                  indicatorPadding: EdgeInsets.only(top: 10),
                  indicatorColor: Pallete.whiteColor,
                  tabs: [
                    Text(
                      'Threads',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Replies',
                      style: TextStyle(fontSize: 20),
                    ),
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
