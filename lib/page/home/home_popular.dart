import 'package:flutter/material.dart';
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
              child: Card(
                shadowColor: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                            ),
                            child: Image.network(
                              place.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          padding: const EdgeInsets.all(6.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.blue,
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Rp.${place.price}',
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          const Text(
                            "/Month",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        place.name,
                        style: const TextStyle(fontSize: 12.0),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "${place.bedrooms} Bedrooms",
                            style: const TextStyle(fontSize: 10.0),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "${place.livingRooms} Livingrooms",
                            style: const TextStyle(fontSize: 10.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
