import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/detail_screen.dart';
import 'package:submission_dasar_flutter/model/house.dart';

class MainFavorite extends StatefulWidget {
  MainFavorite({Key? key}) : super(key: key);

  @override
  _MainFavoriteState createState() => _MainFavoriteState();
}

class _MainFavoriteState extends State<MainFavorite> {
  List<House> items = houseList;
  bool ascendingSort =
      true; // Apakah urutan sedang naik (ascending) atau turun (descending)

  void _sortByPrice() {
    setState(() {
      if (ascendingSort) {
        // Urutkan harga dari yang terendah ke yang tertinggi
        items.sort((a, b) => a.price.compareTo(b.price));
      } else {
        // Urutkan harga dari yang tertinggi ke yang terendah
        items.sort((a, b) => b.price.compareTo(a.price));
      }
      ascendingSort = !ascendingSort; // Toggle urutan
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(12),
            child: const Text(
              "Favourites",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(100, 30)),
                  ),
                  onPressed: _sortByPrice,
                  icon: Icon(Icons.sort),
                  label: Text(
                    "Sort by price",
                    style: TextStyle(fontSize: 12.0),
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place: item);
                  }));
                },
                child: Card(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 170.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(item.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(4.0)),
                                    padding: EdgeInsets.fromLTRB(
                                        14.0, 2.0, 14.0, 2.0),
                                    child: Text(
                                      item.type,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Colors.blue,
                                      size: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rp.${item.price.toString()}',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  Text(
                                    " / Month",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                item.name,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey[700]),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${item.bedrooms} Bedrooms",
                                    style: const TextStyle(fontSize: 10.0),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "${item.livingRooms} Livingrooms",
                                    style: const TextStyle(fontSize: 10.0),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
