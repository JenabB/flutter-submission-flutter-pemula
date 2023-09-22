import 'package:flutter/material.dart';
import 'package:submission_dasar_flutter/main_favorite.dart';
import 'package:submission_dasar_flutter/main_home.dart';
import 'package:submission_dasar_flutter/main_profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ExploreScreen(),
    MainFavorite(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Explore Screen'),
    );
  }
}

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Message Screen'),
    );
  }
}
