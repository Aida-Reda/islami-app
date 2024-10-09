import 'package:flutter/material.dart';
import 'package:islami2/utils.dart';

import '../default_screen/default_screen.dart';
class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(getFullPathImage('radio_image.png')),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Text(
            "Radio",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.skip_previous_rounded,size: 45,),
              color: Theme.of(context).colorScheme.secondary,
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.play_arrow_rounded,size: 45,),
              color: Theme.of(context).colorScheme.secondary,
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.skip_next_rounded,size: 45,),
              color: Theme.of(context).colorScheme.secondary,
            ),
          ],
        )
      ],
    );
  }
}
