import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/model/user.dart';

class HomeHeader extends StatelessWidget {
  final User user = userDetails;
  HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 3.0),
                  child: Text(
                    'Good Morning ${user.name},',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16.0),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 4.0),
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 18.0,
                      ),
                    ),
                    Text(
                      user.address,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4.0),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        size: 18.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
                border: Border.all(
                  color: Colors.white,
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications_outlined,
                size: 20.0,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 20, left: 5, right: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white70.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      labelText: 'Search Street, Locality, Address',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
