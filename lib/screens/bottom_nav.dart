import 'package:college/screens/Home.dart';
import 'package:college/screens/colleges.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key, required this.pageno}) : super(key: key);
  final int pageno;
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pageno==1? Home() : const Colleges(),
      bottomNavigationBar: Row(
        children: [
          bottomNavItem(0, Icons.home, true, 'Search'),
          bottomNavItem(1, Icons.bookmark_add_sharp, false, 'saved'),
          bottomNavItem(2, Icons.explore_outlined, false, 'saved'),
          bottomNavItem(3, Icons.person, false, 'account'),
        ],
      ),
    );
  }

//bottom Navbar Item
  Widget bottomNavItem(int index, IconData icon, bool isActive, String Name) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.lightBlue[900],
          border: index == _selectedItemIndex
              ? const Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                )
              : const Border(),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 35,
              child: Icon(
                icon,
                color:
                    index == _selectedItemIndex ? Colors.white : Colors.white70,
              ),
            ),
            Text(
              Name,
              style: TextStyle(
                color:
                    index == _selectedItemIndex ? Colors.white : Colors.white70,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
