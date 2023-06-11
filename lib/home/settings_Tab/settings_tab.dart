import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_demo/home/settings_Tab/Language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',
            style:Theme.of(context).textTheme.overline
            ,),
          InkWell(
            onTap:  showLanguageBottomSheet,
            child: Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).primaryColor
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('English',style:Theme.of(context).textTheme.headlineSmall),
                    Icon(Icons.arrow_drop_down_outlined)
                  ],
                )
            ),
          ),
          SizedBox(height: 12,),
          Text('Theming',
            style:Theme.of(context).textTheme.overline
            ,),
          Container(
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).primaryColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dark',style:Theme.of(context).textTheme.headlineSmall),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              )
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return LanguageBottomSheet();
    }
    );

  }
}
