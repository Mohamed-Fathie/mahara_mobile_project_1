import 'package:flutter/material.dart';
import 'package:maharah_project/user_profile/user_profile_bottom_section.dart';
import 'user_profile_header.dart';

class UserProfileScreen extends StatelessWidget {
  String name;
  UserProfileScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text("User profile"),
        centerTitle: true,
      ),
      body:   SingleChildScrollView(
        padding: EdgeInsets.only(top: 82),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserProfileHeader(name: name),
              SizedBox(
                height: 16,
              ),
              UserProfileBottomSection()
            ],
          ),
        ),
      ),
    );
  }
}
