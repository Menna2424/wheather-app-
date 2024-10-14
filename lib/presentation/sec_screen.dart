import 'package:flutter/material.dart';

class SecScreen extends StatefulWidget {
  const SecScreen({super.key});

  @override
  State<SecScreen> createState() => _SecScreenState();
}

class _SecScreenState extends State<SecScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpeg"),
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(



        ),
      ),
    );
  }
}
