import 'package:flutter/material.dart';
import 'package:islamic_demo/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehCounter = 0 ;
  List<String> tasbeh = ["سبحان الله"," الحمدلله ","لا اله الا الله "];
  int index = 0 ;
  double angle = 0 ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(

          children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head of seb7a.png'),
            Transform.rotate(
              angle: angle,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.09,
                ),
                child: GestureDetector(
                    onTap: () {
                      onTasbehTab();
                    },
                    child: Image.asset('assets/images/body of seb7a.png')),
              ),
            )
          ],
        ),
        Text(
          'number of tasbeh',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: MyThemeData.lightPrimary,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Text(
              tasbehCounter.toString(),
            style: TextStyle(color: Colors.black,
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Text(
              tasbeh[index],
                style: TextStyle(color: Colors.black,
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
        //Text(data)
      ]),
    );
  }
  void onTasbehTab(){
    tasbehCounter++;
    if(tasbehCounter % 33 == 0 ){
      index++;
    }
    if(index == tasbeh.length ){
      index=0;
    }
    angle+= 33;
    setState(() {
    });
  }
}
