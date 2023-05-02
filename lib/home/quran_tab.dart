import 'package:flutter/material.dart';
import 'package:islamic_demo/my_theme.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/quran_header_image.png'),
          Divider(
            color: MyThemeData.lightPrimary,
            thickness: 2,
          ),
          Divider(
            color: MyThemeData.lightPrimary,
            thickness: 2,
          ),
          Text('Sura name')
        ],
      ),
    );
  }
}
