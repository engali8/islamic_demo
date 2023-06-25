import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemingBottomSheet extends StatefulWidget {
  @override
  State<ThemingBottomSheet> createState() => _ThemingBottomSheetState();
}

class _ThemingBottomSheetState extends State<ThemingBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [




          InkWell(
            onTap: (){


            },
            child: Text(
              'Light',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          )
        ],
      ),
    );
  }


Widget getunSelectedItemWidget(String text) {
  return Row(
    children: [
      Text(
        text,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    ],
  );
}
}
