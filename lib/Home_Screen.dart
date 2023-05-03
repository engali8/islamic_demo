import 'package:flutter/material.dart';
import 'package:islamic_demo/home/Quran/quran_tab.dart';
import 'package:islamic_demo/home/Radio_Tab.dart';
import 'package:islamic_demo/home/hadeth_tab.dart';
import 'package:islamic_demo/home/sebha_tab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = '';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
              'Islami', style: Theme.of(context).textTheme.headline1),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                  ),
                  label: 'Hadeth'),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    ]);
  }

  List<Widget> tabs = [RadioTab(), SebhaTab(), QuranTab(), HadethTab()];
}
