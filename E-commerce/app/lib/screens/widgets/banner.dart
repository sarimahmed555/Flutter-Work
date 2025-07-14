import 'package:flutter/material.dart';

class Banner extends StatefulWidget {
  final String image;
  const Banner({super.key, required this.image});

  @override
  State<Banner> createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/${widget.image}'),
        ),
      ),
    );
  }
}
