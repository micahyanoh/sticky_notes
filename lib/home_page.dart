import 'package:flutter/material.dart';
import 'package:sticky_notes/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: contColor,
          )),
        ],
      ),
    );
  }
}
