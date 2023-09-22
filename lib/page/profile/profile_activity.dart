import 'package:flutter/material.dart';

class ProfileActivity extends StatelessWidget {
  ProfileActivity({Key? key}) : super(key: key);

  final TextStyle secondText = TextStyle(fontSize: 12, color: Colors.grey[600]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Activity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "View your recent property searches and activities",
                      style: secondText,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna border (abu-abu)
                  ),
                  shape: BoxShape.circle, // Bentuk border (lingkaran)
                ),
                child: Center(
                  child: Icon(
                    Icons.navigate_next,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
