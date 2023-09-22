import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/model/house.dart';

class RoomItem extends StatelessWidget {
  final House item;
  RoomItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(Icons.bed),
            SizedBox(
              width: 6,
            ),
            Text(item.bedrooms.toString()),
            SizedBox(
              width: 2,
            ),
            const Text("Bedrooms")
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            Icon(Icons.bed),
            SizedBox(
              width: 6,
            ),
            Text(item.bedrooms.toString()),
            SizedBox(
              width: 2,
            ),
            Text("Bedrooms")
          ],
        ),
      ],
    );
  }
}
