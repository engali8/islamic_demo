import 'package:flutter/material.dart';
import 'package:islamic_demo/home/Hadeth/hadeth_tab.dart';
import 'package:islamic_demo/my_theme.dart';

import 'item_hadeth_details.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const routeName = 'Hadeth details';

  @override
  State<HadethDetailsScreen> createState() => _hadethDetailsScreen();
}

class _hadethDetailsScreen extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
          title: Text(args.title, style: Theme.of(context).textTheme.headline1),
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
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }
}