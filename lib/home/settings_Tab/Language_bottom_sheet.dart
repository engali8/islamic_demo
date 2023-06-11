import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('English'),
              Icon(Icons.check)
            ],
          ),
          Row(
            children: [
              Text("Arabic"),
            ],
          )
        ],
      ),


    );
  }
}
