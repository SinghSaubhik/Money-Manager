import 'package:flutter/material.dart';
import '../constant.dart';

class GreetingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hi, Singh",
          style: greetingMain,
        ),
        Text(
          "Welcome back.",
          style: greetingSub,
        ),
      ],
    );
  }
}
