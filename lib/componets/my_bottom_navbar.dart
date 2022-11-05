import 'package:flutter/material.dart';
import 'package:plant_app/componets/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: () {},
        ),
      ]),
    );
  }
}
