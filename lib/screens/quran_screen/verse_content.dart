import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  const VerseContent({
    super.key,
    required this.oneVerse,
    required this.index,
  });

  final String oneVerse ;
  final int index ;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$oneVerse(${index + 1})',
      style: Theme.of(context).textTheme.bodySmall,
      textDirection: TextDirection.rtl,
    );
  }
}
