import 'package:flutter/material.dart';
import 'package:islami2/models/hadith_model.dart';

import '../../core/route_manager.dart';

class HadithTitle extends StatelessWidget {
  const HadithTitle({
    super.key,
    required this.hadithModel,
  });

  final HadithModel hadithModel ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(
            context,
            RouteManager.hadithDetailsRoute,
          arguments: hadithModel
        );
      },
      child: Center(
        child: Text(
          hadithModel.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
