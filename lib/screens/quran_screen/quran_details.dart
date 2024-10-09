import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/models/quran_model.dart';
import 'package:islami2/screens/default_screen/default_screen.dart';
import 'package:islami2/screens/quran_screen/verse_content.dart';

class QuranDetails extends StatefulWidget {
   const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
   List<String> verses =[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QuranModel;
    if(verses.isEmpty){
      readFileContent(args.index);
    }
    return DefaultScreen(
        body: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title
            ),
          ),
          body: verses.isNotEmpty? Card(
            margin: const EdgeInsets.symmetric(vertical: 60.0 , horizontal: 40),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: ListView.builder(
                  itemBuilder: (context ,index) => VerseContent(oneVerse: verses[index],index: index,),
                  itemCount: verses.length
              ),
            ),
          ): const Center(child: CircularProgressIndicator(),)
        )
    );
  }

  void readFileContent(int index)async{
    String fileContent = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines = fileContent.trim().split('\n');
   setState(() {
     verses = lines ;
   });
  }
}
