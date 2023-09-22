import 'package:flutter/material.dart';

class RoomOwner extends StatelessWidget {
  const RoomOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://osccdn.medcom.id/images/content/2021/09/05/e7197bca4c2dd9374d4d6421f5259275.jpg"),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ziva Magnolya",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Building Owner",
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(5),
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Icon(
                      Icons.sms_outlined,
                      color: Colors.blue,
                      size: 16.0,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Icon(
                      Icons.phone_outlined,
                      color: Colors.blue,
                      size: 16.0,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
