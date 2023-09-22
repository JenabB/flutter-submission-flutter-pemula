import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/model/user.dart';

class ProfileHeader extends StatelessWidget {
  final User user = userDetails;
  final TextStyle secondText = TextStyle(fontSize: 12, color: Colors.grey[600]);
  ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, // Sesuaikan dengan tinggi yang Anda inginkan
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(user.avatar),
                        radius: 30.0,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.name,
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 4),
                        Text(
                          user.email,
                          style: secondText,
                        ),
                        SizedBox(height: 4),
                        Text(
                          user.phone,
                          style: secondText,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
