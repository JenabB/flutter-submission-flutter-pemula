import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/page/profile/profile_activity.dart';
import 'package:submission_dasar_flutter/page/profile/profile_header.dart';
import 'package:submission_dasar_flutter/page/profile/profile_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.all(12),
              child: const Text(
                "Profile",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ProfileHeader(),
          SizedBox(height: 10),
          ProfileActivity(),
          SizedBox(height: 10),
          ProfileOptions()
        ],
      ),
    );
  }
}
