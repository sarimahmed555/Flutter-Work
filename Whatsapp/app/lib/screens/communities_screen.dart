import 'package:flutter/material.dart';


class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return   ListView(
      children: [
        Text('Communities Screen')
      ],
    );
  }
}