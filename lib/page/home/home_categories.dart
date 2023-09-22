import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/model/category.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 125.0,
          padding: const EdgeInsets.all(4),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: categoryList.map((category) {
              return Container(
                  width: 80.0,
                  margin: const EdgeInsets.fromLTRB(0, 5, 8, 0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.asset(
                          height: 70,
                          category.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        category.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0),
                      )
                    ],
                  ));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
