import 'package:flutter/material.dart';
import 'package:islami2/core/route_manager.dart';
import 'package:islami2/utils.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
            ()=>Navigator.pushReplacementNamed(context , RouteManager.homeRoute)
    );
    return Image.asset(
      getFullPathImage('splash.jpg'),
      fit: BoxFit.fill,
      width: double.infinity,
    );
  }
}
