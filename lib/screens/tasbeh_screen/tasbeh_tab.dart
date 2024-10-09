import 'package:flutter/material.dart';
import '../../utils.dart';
class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {

  double turns = 0;
  static int counter = 0 ;
  List<String> azkar = ['سبحان الله','الحمد لله','لااله الا الله','الله أكبر'];
  int index = 0 ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Stack(
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
                    turns +=1.0/34;
                    counter++;
                    if(counter>33){
                      counter=0;
                      index<azkar.length-1 ? index++ : index=0 ;
                    }
                  });
                },
                child: Image.asset(getFullPathImage('body_sebha_logo.png'),width: 234,height: 232,),
              ),
            ),
          ),
        ],
      ),
          const Spacer(flex: 1,),
          Center(
            child: Text(
              'Number of Praises',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const Spacer(flex: 1,),
          Center(
            child: Container(
              width: 69,
              height: 81,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Text(
                  counter.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          const Spacer(flex: 1,),
          Center(
            child: Container(
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Text(
                  azkar[index],
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ),
          const Spacer(flex: 4,),
        ],
      ),
    );
  }
}
