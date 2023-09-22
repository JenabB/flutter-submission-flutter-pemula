import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/model/mock_detail.dart';

class RoomOverview extends StatelessWidget {
  final List<MockDetail> mock = mockDetailList;
  RoomOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Overview",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        Container(
          padding: EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: mock.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Container(width: 150.0, child: Text(mock[index].name)),
                    Text(
                      mock[index].value,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
