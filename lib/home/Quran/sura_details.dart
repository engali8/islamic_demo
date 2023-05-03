import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_demo/home/Quran/item_sura_details.dart';
import 'package:islamic_demo/my_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const routeName = 'sura details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(args.name, style: Theme.of(context).textTheme.headline1),
        ),
        body: Container(
          width: width * 0.9,
          height: height * 0.7,
          margin: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              bottom: height * 0.06,
              top: height * 0.06),
          decoration: BoxDecoration(
            color: MyThemeData.colorWhite,
            borderRadius: BorderRadius.circular(24),
          ),
          child: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemSuraDetails(text: verses[index], index: index);
                  },
                  itemCount: verses.length,
                ),
        ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');

    List<String> lines = fileContent.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
