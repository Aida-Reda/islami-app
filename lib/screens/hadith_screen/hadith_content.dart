import 'package:flutter/material.dart';
import 'package:islami2/models/hadith_model.dart';
import 'package:islami2/screens/default_screen/default_screen.dart';

class HadithContent extends StatelessWidget {
  const HadithContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadithModel;
    return DefaultScreen(
        body: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title
            ),
          ),
          body:  Card(
            margin: const EdgeInsets.symmetric(vertical: 60.0 , horizontal: 40),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 30),
              child: SingleChildScrollView(
                child: Text(
                    args.content,
                  style: Theme.of(context).textTheme.bodySmall,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ),
        )
    );
  }
}
