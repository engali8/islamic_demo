import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset('assets/images/head of seb7a.png'),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.09,
            ),
            child: Image.asset('assets/images/body of seb7a.png'),
          )
        ],
      ),
      //Text(data)
    ]);
  }
}
