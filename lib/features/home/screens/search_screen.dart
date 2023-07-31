import 'package:flutter/material.dart';
import 'package:th/core/commons/custom_textformfield.dart';
import 'package:th/features/home/widgets/search_people.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Search',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                controller: searchController,
              ),
              const SizedBox(height: 10),
              const SearchPeople(),
              const Divider(
                indent: 60,
                thickness: 3,
              ),
              const SearchPeople(),
              const Divider(
                indent: 60,
                thickness: 3,
              ),
              const SearchPeople(),
              const Divider(
                indent: 60,
                thickness: 3,
              ),
              const SearchPeople(),
            ],
          ),
        ),
      ),
    );
  }
}
