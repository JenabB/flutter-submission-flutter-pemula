import 'package:flutter/material.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.fromLTRB(18, 14, 10, 10),
              child: Column(
                children: [
                  Text(
                    "Find Your Perfect Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Enjoy Exclusive Deals",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  const Text(
                    "At Local Hotspots",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(10, 20), backgroundColor: Colors.red),
                    child: Text(
                      "Check Now",
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 200,
              child: Image.asset(
                "images/hero.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
