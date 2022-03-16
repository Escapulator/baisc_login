import 'package:flutter/material.dart';
import 'package:tests/Constants/app_assets.dart';
import 'package:tests/Widgets/gradient_text.dart';
import 'package:tests/Widgets/item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: [
              Row(
                children: [
                  GradientText(
                    key,
                    'Trending Today ',
                    style: const TextStyle(
                        fontSize: 34, fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFF2BC3D), Color(0xFFD93636)]),
                  ),
                  const Text(
                    '🔥',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Item(
                  title: 'Smash Stockpile',
                  views: '+10 New Videos',
                  endValueColor: Color(0xFF8C8797),
                  sliderValue: 0.5,
                  endvalue: ' 15/30',
                  image: AppAsset.image),
              const Item(
                  title: 'FGC Rumble',
                  views: '+18 New Videos',
                  sliderValue: 0,
                  endValueColor: Color(0xFFF2BC3D),
                  endvalue: ' 0/18',
                  image: AppAsset.images),
              const Item(
                  title: 'Valorant Volume',
                  views: '21/21',
                  sliderValue: 0.97,
                  endValueColor: Color(0xFF8C8797),
                  endvalue: ' 15/30',
                  image: AppAsset.imagess),
              Image.asset(AppAsset.verification),
              const Text(
                'Check back soon for new clips \nand creator content.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                'In the meantime join our discord.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA19DAA)),
              ),
              const SizedBox(height: 40),
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(56),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFF2BC3D), Color(0xFF392904)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ImageIcon(
                      AssetImage(AppAsset.vector),
                      color: Colors.white,
                    ),
                    Text(
                      ' Join Metaview Discord',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
