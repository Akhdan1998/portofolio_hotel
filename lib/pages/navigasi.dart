import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/pages/profil/profil.dart';
import 'package:portofolio_hotel/pages/reservasi/reservasi.dart';
import 'package:supercharged/supercharged.dart';

import 'home/home.dart';

class navigasi extends StatefulWidget {
  @override
  State<navigasi> createState() => _navigasiState();
}

class _navigasiState extends State<navigasi> {
  int _selectedIndex = 0;
  PageController controller = PageController();
  bool isDrawerOpen = false;
  void _navigasiBottomBar(int index) {
    setState(() {
      _selectedIndex = index;

      controller.animateToPage(_selectedIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOutCirc);
    });
  }

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            home(),
            reservasi(),
            profil(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // alignment: Alignment.bottomCenter,
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: _navigasiBottomBar,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: '4DA934'.toColor(),
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Image.asset('assets/home.png'),
                activeIcon: Image.asset(
                  'assets/home.png',
                  color: '4DA934'.toColor(),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Reservation',
                icon: Image.asset('assets/reservasi.png'),
                activeIcon: Image.asset(
                  'assets/reservasi.png',
                  color: '4DA934'.toColor(),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Image.asset('assets/profil.png'),
                activeIcon: Image.asset(
                  'assets/profil.png',
                  color: '4DA934'.toColor(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
