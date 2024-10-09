import 'package:flutter/cupertino.dart';
import 'package:islami2/utils.dart';

class BottomNavBarItem extends BottomNavigationBarItem{
  String title;
  String? imageName;
  Color color;
  Icon? mainIcon ;
  BottomNavBarItem({
    required this.title,
    required this.color,
    this.imageName,
    this.mainIcon,
}):super(
    label: title,
    icon: mainIcon ?? ImageIcon(AssetImage(getFullPathImage(imageName!))),
    backgroundColor: color,
  );
}