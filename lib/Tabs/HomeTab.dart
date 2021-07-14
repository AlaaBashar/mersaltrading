import 'package:flutter/material.dart';
import 'package:mersaltrading/AllWidgetOfApp/AllWidget.dart';
import 'package:mersaltrading/Constant/Constant.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.0,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Alhna",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 10.0,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "POSID (11680)",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          CustomDivider(widthOfDivider: 0.9,),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: colorOfCardSignIn,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              height: 450.0,
              width: getScreenWidth(context) * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "الصفحةالرئيسية",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: ColorOfTabBar.textColorOfTab,
                    ),
                  ),
                  Divider(
                    color: Colors.green,
                  ),
                  ButtonOfHomeTab(
                    textOfButton: "البطاقات",
                  imageOfButton: Icons.payment,

                  ),
                  ButtonOfHomeTab(
                    textOfButton: "Payments",
                    imageOfButton: Icons.payment,
                  ),
                  SizedBox(height: 40.0,),
                  CustomDivider(widthOfDivider: 0.8,),
                  TextFieldOfHomeTab(textHint: "المعلومات الشخصية",),
                  SizedBox(height: 20.0,),
                  CustomDivider(widthOfDivider: 0.8,),
                  TextFieldOfHomeTab(textHint: "المعلومات المالية",),
                  SizedBox(height: 20.0,),
                  ButtonOfHomeTab(
                    textOfButton: "عرض اخر فاتورة",
                  ),






                ],
              ),
            ),
          ),









        ],
      ),
    );
  }
}

