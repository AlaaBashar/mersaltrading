import 'package:flutter/material.dart';
import 'package:mersaltrading/AllWidgetOfApp/AllWidget.dart';
import 'package:mersaltrading/Tabs/HomeTab.dart';
import '../Constant/Constant.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorOfTabBar.backgroundColorOfTabBar,
            bottom: buildTabBar(),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeTab(),
            SizedBox(height: 10.0,),
            SizedBox(height: 10.0,),
            SizedBox(height: 10.0,),
            SizedBox(height: 10.0,),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          iconSize: 30.0,
          selectedFontSize: 18,
          unselectedFontSize: 15,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'MWJO'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                label: 'Print Invoices'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
            ),
          ],
         onTap: (index){
            setState(() {
              currentIndex=index;
            });
         },
        ),


      ),
    );
  }


}

