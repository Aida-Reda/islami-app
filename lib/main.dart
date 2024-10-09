import'package:flutter/material.dart';
import 'package:islami2/screens/hadith_screen/hadith_content.dart';
import 'package:islami2/screens/hadith_screen/hadith_tab.dart';
import 'package:islami2/screens/home_screen/home_page.dart';
import 'package:islami2/screens/quran_screen/quran_details.dart';
import 'package:islami2/screens/quran_screen/quran_tab.dart';
import 'package:islami2/screens/radio_screen/radio_tab.dart';
import 'package:islami2/screens/setting_screen/setting_tab.dart';
import 'package:islami2/screens/splash_screen/splash_screen.dart';
import 'package:islami2/screens/tasbeh_screen/tasbeh_tab.dart';
import 'package:islami2/theme/my_theme.dart';

import 'core/route_manager.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      routes: {
        RouteManager.splashRoute : (_)=>const SplashScreen(),
        RouteManager.homeRoute : (_)=> const HomePage(),
        RouteManager.quranRoute : (_)=> QuranTab(),
        RouteManager.hadithRoute : (_)=>const HadithTab(),
        RouteManager.tasbehRoute : (_)=>const TasbehTab(),
        RouteManager.radioRoute : (_)=>const RadioTab(),
        RouteManager.settingRoute : (_)=>const SettingTab(),
        RouteManager.quranDetailsRoute :(_)=>const QuranDetails(),
        RouteManager.hadithDetailsRoute : (_)=>const HadithContent(),
      },
    );
  }
}
