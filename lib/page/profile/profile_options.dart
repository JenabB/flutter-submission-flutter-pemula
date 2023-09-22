import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/page/profile/option_item.dart';

class ProfileOptions extends StatelessWidget {
  ProfileOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              OptionItem(icon: Icons.language, text: "Language"),
              OptionItem(icon: Icons.notifications, text: "Notification"),
              OptionItem(icon: Icons.money, text: "Offers"),
              OptionItem(icon: Icons.privacy_tip, text: "Privacy policy"),
              OptionItem(icon: Icons.help, text: "Help and Support"),
              OptionItem(
                icon: Icons.logout,
                text: "Logout",
                color: Colors.blue,
                iconColor: Colors.blue,
                isLastItem: true,
                hasntAction: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
