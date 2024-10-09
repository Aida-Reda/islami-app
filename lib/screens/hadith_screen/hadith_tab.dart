import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/models/hadith_model.dart';
import 'package:islami2/screens/hadith_screen/hadith_title.dart';
import 'package:islami2/utils.dart';
class HadithTab extends StatefulWidget {
  const  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}


class _HadithTabState extends State<HadithTab> {
  List<HadithModel> hadithList=[] ;

  @override
  void initState() {
    readHadithFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset(getFullPathImage('hadeth_logo.png'))),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(
                          width: 1,
                            color: Theme.of(context).colorScheme.secondary
                        )
                    )
                ),
                child: Text(
                  "Hadith Num",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),

              ),
               Expanded(
                   child:hadithList.isNotEmpty? ListView.separated(
                       itemBuilder: (context , index) => HadithTitle(hadithModel: hadithList[index],),
                       separatorBuilder: (context , index) => Divider(
                         thickness: 1.5,
                         height: 2,
                         color: Theme.of(context).colorScheme.secondary,
                         endIndent: 60,
                         indent: 60,
                       ),
                       itemCount: hadithList.length
                   )
                       :const Center(child: CircularProgressIndicator(),),
               ),
            ],
          ),
        ),
      ],
    );
  }

  void readHadithFile()async{
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt',cache: true);
    List<String> sepratedHadith = fileContent.trim().split('#');

    for(int i=0 ; i<sepratedHadith.length ; i++){
      String singleHadith = sepratedHadith[i];
      List<String> lines = singleHadith.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
        hadithList.add(
            HadithModel(title: title, content: content)
        );
    }
    setState(() {

    });
  }
}
