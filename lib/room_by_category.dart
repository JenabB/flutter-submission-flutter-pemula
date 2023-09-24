import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/common/HouseCardItem.dart';
import 'package:submission_dasar_flutter/detail_screen.dart';
import 'package:submission_dasar_flutter/model/house.dart';

class RoomByCategory extends StatefulWidget {
  String category;
  RoomByCategory({Key? key, required this.category}) : super(key: key);

  @override
  State<RoomByCategory> createState() => _RoomByCategoryState();
}

class _RoomByCategoryState extends State<RoomByCategory> {
  List<House> getFilteredItems() {
    // Menggunakan metode where untuk memfilter houseList
    return houseList.where((place) => place.type == widget.category).toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredItems = getFilteredItems();
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth >= 480 ? 480 : screenWidth;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '${widget.category} lists',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: containerWidth,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                if (filteredItems.isEmpty)
                  Center(
                    child: Text("No house item for now :)"),
                  )
                else
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: filteredItems.map((place) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(place: place);
                            }));
                          },
                          child: HouseCardItem(place: place),
                        );
                      }).toList(),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
