import 'package:flutter/material.dart';
import 'package:tests/Constants/app_assets.dart';

class Item extends StatelessWidget {
  final String title;
  final String views;
  final double sliderValue;
  final String endvalue;
  final Color endValueColor;
  final String image;
  const Item(
      {Key? key,
      required this.title,
      required this.views,
      required this.sliderValue,
      required this.endValueColor,
      required this.endvalue,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.only(top: 12),
          height: 403,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: LinearGradient(colors: [
                const Color(0xFFFFFFFF).withOpacity(0.2),
                const Color(0xFF28262C).withOpacity(.2)
              ])),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 288,
                width: 400,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    views,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFFF2BC3D),
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        const AssetImage(AppAsset.icon),
                        size: 14,
                        color: endValueColor,
                      ),
                      Text(
                        endvalue,
                        style: TextStyle(
                            color: endValueColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Slider(
                value: sliderValue,
                onChanged: (change) {},
                activeColor: const Color(0xFFF2BC3D),
                inactiveColor: const Color(0xFFFFFFFF).withOpacity(.1),
              ),
            )
          ]),
        ),
        Positioned(
          top: 268,
          left: 289,
          child: Container(
            height: 64,
            width: 64,
            decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: const Color(0xFFFFFF26).withOpacity(.1)),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
