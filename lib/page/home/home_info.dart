import 'package:flutter/material.dart';

class HomeInfo extends StatefulWidget {
  const HomeInfo({Key? key}) : super(key: key);

  @override
  State<HomeInfo> createState() => _HomeInfoState();
}

class _HomeInfoState extends State<HomeInfo> {
  double opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();
    animateOpacity();
  }

  void animateOpacity() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacityLevel = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: opacityLevel,
            child: Text(
              "Find Your Perfect Home",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: opacityLevel,
            child: const Text(
              "Enjoy Exclusive Deals",
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ),
          SizedBox(height: 3),
          AnimatedOpacity(
            duration: Duration(seconds: 3),
            opacity: opacityLevel,
            child: const Text(
              "At Local Hotspots",
              style: TextStyle(color: Colors.white, fontSize: 11.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedOpacity(
            duration: Duration(seconds: 3),
            opacity: opacityLevel,
            child: SizedBox(
              width: 80,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(2.0),
                  backgroundColor: Colors.black,
                ),
                child: Text(
                  "Check Now",
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
