import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/page/home/home_categories.dart';
import 'package:submission_dasar_flutter/page/home/home_header.dart';
import 'package:submission_dasar_flutter/page/home/home_info.dart';
import 'package:submission_dasar_flutter/page/home/home_popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth >= 480 ? 480 : screenWidth;

    return Center(
      child: Container(
        width: containerWidth,
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            HomeHeader(),
            const SizedBox(height: 15.0),
            const HomeInfo(),
            const SizedBox(height: 15.0),
            const HomeCategories(),
            HomePopular(gridCount: 2)
          ],
        ),
      ),
    );
  }
}
