import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_demo/home/settings_Tab/Language_bottom_sheet.dart';
import 'package:islamic_demo/provider/app_config_provider.dart';
import 'Theming_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
            style: Theme
                .of(context)
                .textTheme
                .overline
            ,),
          InkWell(
            onTap: showLanguageBottomSheet,
            child: Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme
                        .of(context)
                        .primaryColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.english, style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall),
                    Icon(Icons.arrow_drop_down_outlined)
                  ],
                )
            ),
          ),
          SizedBox(height: 12,),
          Text('Theming',
            style: Theme
                .of(context)
                .textTheme
                .overline
            ,),
          InkWell(
            onTap: () {
              showThemingBottomSheet();
            },
            child: Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme
                        .of(context)
                        .primaryColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.light, style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall),
                    Icon(Icons.arrow_drop_down_outlined)
                  ],
                )
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return LanguageBottomSheet();
    }
    );
  }

  void showThemingBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return ThemingBottomSheet();
    }
    );
  }
}