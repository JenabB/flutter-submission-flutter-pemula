import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/model/house.dart';
import 'package:submission_dasar_flutter/page/detail/room_item.dart';
import 'package:submission_dasar_flutter/page/detail/room_overview.dart';
import 'package:submission_dasar_flutter/page/detail/room_owner.dart';

class DetailScreen extends StatefulWidget {
  final House place;

  DetailScreen({Key? key, required this.place}) : super(key: key);

  BoxDecoration iconStyle = BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.white,
  );

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(2.0),
        // height: 300.0,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        widget.place.imageUrl,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: widget.iconStyle,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.navigate_before,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: Row(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: widget.iconStyle,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: widget.iconStyle,
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.share,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Rp. ${widget.place.price.toString()}',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Text(
                                  "/Month",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  widget.place.type,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.place.name,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Colors.blue,
                              ),
                              Text(
                                "View on map",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RoomItem(item: widget.place),
                      const SizedBox(
                        height: 10,
                      ),
                      const RoomOwner(),
                      const SizedBox(
                        height: 10,
                      ),
                      RoomOverview()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  vertical: 16.0), // Menambahkan padding vertical
              primary: Colors.blue, // Warna latar belakang tombol
            ),
            child: Text(
              'Book Now',
              style: TextStyle(fontSize: 18.0), // Ukuran teks tombol
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
