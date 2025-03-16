import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xffff660e),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon:const Icon(Icons.ad_units_outlined,size: 25,)),
        IconButton(
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xffff660e),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            iconSize: 20,
            icon: const Icon(Icons.notifications_outlined)),
      ],
    );
  }
}
