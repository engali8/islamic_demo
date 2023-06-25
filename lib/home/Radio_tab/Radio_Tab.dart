import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Column(children: [
     Container(
       margin: EdgeInsets.only(top: 80,bottom: 40),
       child: Image.asset('assets/images/pngwing.png'),
     ),
     Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('اذاعة القرآن الكريم',
         style: TextStyle(
           fontWeight: FontWeight.w100,
           fontSize: 25,

         ),
         )
       ],
     ),
     Container(
       margin: EdgeInsets.only(top: 60),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Icon(Icons.skip_previous,size: 40,),
           Icon(Icons.play_arrow,size: 40,),
           Icon(Icons.skip_next,size: 40,),
         ],
       ),
     )



   ],);
  }
}
