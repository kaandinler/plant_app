import 'package:flutter/material.dart';
import 'package:plant_app/componets/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                    ),
                    Spacer(),
                    IconCard(
                      icon: Icon(Icons.sunny),
                    ),
                    IconCard(
                      icon: Icon(Icons.water_drop_outlined),
                    ),
                    IconCard(icon: Icon(Icons.waterfall_chart_rounded)),
                    IconCard(
                      icon: Icon(Icons.cloud),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                    image: AssetImage("assets/images/kaktus.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft),
              ),
            )
          ],
        ),
      ),
    );
  }
}
