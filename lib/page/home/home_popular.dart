import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/common/HouseCardItem.dart';
import 'package:submission_dasar_flutter/detail_screen.dart';
import 'package:submission_dasar_flutter/model/house.dart';

class HomePopular extends StatelessWidget {
  final int gridCount;
  HomePopular({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Popular nearest you",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                "See All >",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 12),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: houseList.map((place) {
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place: place);
                  }));
                },
                child: HouseCardItem(place: place));
          }).toList(),
        ),
      ],
    );
  }
}
