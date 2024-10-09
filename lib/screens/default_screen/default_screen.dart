import 'package:flutter/material.dart';
import 'package:islami2/utils.dart';

class DefaultScreen extends StatelessWidget {
   DefaultScreen({
    super.key,
    required this.body
  });
  Widget body;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            getFullPathImage('default_bg.png'),
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        body,
      ],
    );
  }
}
