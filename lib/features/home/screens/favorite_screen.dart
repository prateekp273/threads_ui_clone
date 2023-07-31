import 'package:flutter/material.dart';

import '../widgets/favorite_tile.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List variables = ['All', 'Reples', 'Mentions', 'Verified'];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              const Text(
                'Activity',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: variables.length,
                    itemBuilder: (context, i) {
                      return Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Chip(label: Text(variables[i])));
                    }),
              ),
              const FavoriteTile(),
              const Divider(
                thickness: 3,
                indent: 60,
              ),
              const FavoriteTile(),
              const Divider(
                thickness: 3,
                indent: 60,
              ),
              const FavoriteTile(),
              const Divider(
                thickness: 3,
                indent: 60,
              ),
              const FavoriteTile(),
              const Divider(
                thickness: 3,
                indent: 60,
              ),
              const FavoriteTile(),
              const Divider(
                thickness: 3,
                indent: 60,
              ),
              const FavoriteTile()
            ],
          ),
        ),
      ),
    );
  }
}
