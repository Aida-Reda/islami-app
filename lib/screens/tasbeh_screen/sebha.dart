import 'package:flutter/material.dart';
import 'package:islami2/utils.dart';

class Sebha extends StatefulWidget {

  const Sebha({
    super.key,
  });
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {

  double turns=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(getFullPathImage('head_sebha_logo.png'),width: 73,height: 105,),
        Padding(
          padding: const EdgeInsets.only(top: 75.0),
          child: AnimatedRotation(
            turns: turns,
            duration: (const Duration(seconds: 1)),
            child: InkWell(
              onTap: (){
                setState(() {
                  turns +=1.0/33;
                });
              },
              child: Image.asset(getFullPathImage('body_sebha_logo.png'),width: 234,height: 232,),
            ),
          ),
        ),
      ],
    );
  }
}
