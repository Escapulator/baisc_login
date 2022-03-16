import 'package:flutter/material.dart';
import 'package:tests/Constants/app_assets.dart';
import 'package:tests/auth.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: const Home(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF000000),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFFF2BC3D),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.ellipse,
              width: 23.0,
            ),
            label: 'Hot',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.tab,
              width: 23.0,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.tab1,
              width: 23.0,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.tab2,
              width: 23.0,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.tab3,
              width: 23.0,
            ),
            label: 'Wallet',
          ),
        ],
      ),
    );
  }
}
