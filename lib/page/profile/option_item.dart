import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String text;
  Color color;
  Color iconColor;
  bool hasntAction;
  bool isLastItem;

  OptionItem(
      {Key? key,
      required this.icon,
      required this.text,
      this.color = Colors.black54,
      this.iconColor = Colors.black54,
      this.hasntAction = false,
      this.isLastItem = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: iconColor),
                const SizedBox(width: 15),
                Text(
                  text,
                  style: TextStyle(fontSize: 12, color: color),
                )
              ],
            ),
            Visibility(
              visible: !hasntAction,
              child: const Icon(
                Icons.navigate_next,
                size: 20,
              ),
            )
          ],
        ),
        const SizedBox(height: 2),
        Visibility(
          visible: !isLastItem,
          child: Divider(
            thickness: 1,
            color: Colors.grey[150],
          ),
        ),
      ],
    ));
  }
}
