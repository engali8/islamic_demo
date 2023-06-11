import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_demo/home/Hadeth/item_Hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../my_theme.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          color: MyThemeData.lightPrimary,
          thickness: 6,
        ),
        Text(
          AppLocalizations.of(context)!.haeth_name,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Divider(
          color: MyThemeData.lightPrimary,
          thickness: 6,
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
            itemCount: hadethList.length,
            itemBuilder: (context, index) {
              return ItemHadethName(hadeth: hadethList[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: MyThemeData.lightPrimary,
                thickness: 2,
              );
            },
          ),
        ),
      ],
    );
  }
  void loadHadethFile() async {
    String FileContent =
        await rootBundle.loadString('assets/files_2/hadith.txt');
    List<String> allHadethList = FileContent.split('#\r\n');
    for (int i = 0; i < allHadethList.length; i++) {
      List<String> singleHadeth = allHadethList[i].split('\n');
      String title = singleHadeth[0];
      singleHadeth.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: singleHadeth);
      hadethList.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
