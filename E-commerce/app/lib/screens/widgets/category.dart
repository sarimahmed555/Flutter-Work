import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String title, image;
  final Color color;
  const Category({super.key, required this.title, required this.image, required this.color});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 5,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: widget.color,
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/icons/${widget.image}',color: Colors.white, height: 40),
          ),
          Text(widget.title, style: TextStyle(fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}
