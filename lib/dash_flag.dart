import 'package:flutter/material.dart';

import 'flag.dart';

class DashFlag extends StatelessWidget {
  const DashFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Flag(
              Colors.white,
              Colors.pinkAccent,
              Colors.lightBlueAccent,
              100,
            ),
          ),
          Flag(
            Colors.pink,
            Colors.purple,
            Colors.blueAccent,
            100,
          ),
          Flag(
            Colors.pinkAccent,
            Colors.amber,
            Colors.lightBlue,
            100,
          ),
          Flag(
            Colors.purpleAccent,
            Colors.white,
            Colors.green,
            100,
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
