import 'package:flutter/material.dart';
import 'package:islami2/screens/default_screen/default_screen.dart';
import 'package:islami2/screens/hadith_screen/hadith_tab.dart';
import 'package:islami2/screens/home_screen/bottomNavigationBarItem.dart';
import 'package:islami2/screens/quran_screen/quran_tab.dart';
import 'package:islami2/screens/radio_screen/radio_tab.dart';
import 'package:islami2/screens/setting_screen/setting_tab.dart';
import 'package:islami2/screens/tasbeh_screen/tasbeh_tab.dart';
class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int selectedIndex = 0;
 List <Widget> screens = [
   QuranTab(),
   HadithTab(),
   TasbehTab(),
   RadioTab(),
   SettingTab()
 ];

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
        body: Scaffold(
          appBar:AppBar(
            title: const Text(
              'Islami'
            ),
          ),
          body: screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
                BottomNavBarItem(
                    title: 'Quran',
                    color: Theme.of(context).colorScheme.primary,
                    imageName: 'icon_quran.png',
                ),
                BottomNavBarItem(
                  title: 'Hadith',
                  color: Theme.of(context).colorScheme.primary,
                  imageName: 'icon_hadeth.png',
                ),
                BottomNavBarItem(
                  title: 'Sebha',
                  color: Theme.of(context).colorScheme.primary,
                  imageName: 'icon_sebha.png',
                ),
                BottomNavBarItem(
                  title: 'Radio',
                  color: Theme.of(context).colorScheme.primary,
                  imageName: 'icon_radio.png',
                ),
                BottomNavBarItem(
                  title: 'Sebha',
                  color: Theme.of(context).colorScheme.primary,
                  mainIcon: const Icon(Icons.settings),
                ),
              ]
          ),
        )
    );
  }
}
