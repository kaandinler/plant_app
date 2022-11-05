import 'package:flutter/material.dart';
import 'package:plant_app/componets/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.price,
    required this.title,
    required this.country,
  }) : super(key: key);

  final int price;
  final String title;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: country,
                  style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300))
            ]),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
