import 'package:flutter/material.dart';
import 'package:islami2/core/route_manager.dart';
import 'package:islami2/models/quran_model.dart';

class ChapterName extends StatelessWidget {
  const ChapterName({
    super.key,
    required this.name,
    required this.versesNumber,
    required this.index
  });

 final String name ;
  final String versesNumber;
  final int index ;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(
              context,
              RouteManager.quranDetailsRoute,
            arguments: QuranModel(title: name, index: index)
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                versesNumber,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.secondary,
              width: 2,
            ),
            Expanded(
              child: Text(
                name,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
