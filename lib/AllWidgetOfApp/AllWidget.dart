import 'package:flutter/material.dart';
import 'package:mersaltrading/Constant/Constant.dart';


TabBar buildTabBar() {
  return TabBar(
    unselectedLabelColor: Colors.black38,
    // unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

    labelStyle: TextStyle(fontWeight: FontWeight.bold),
    // indicator: BoxDecoration(
    //   borderRadius: BorderRadius.only(
    //       topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
    //   color: Color.fromRGBO(198, 0, 0, 1),
    // ),
    // :labelStyle:TextStyle(fontWeight: FontWeight.bold),

    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.home,color: ColorOfTabBar.colorOfIcon,size: 30.0,),
      ),
      Tab(
        icon: Icon(Icons.add_to_drive,color: ColorOfTabBar.colorOfIcon,),
      ),
      Tab(
        icon: Image.asset('assets/images/worldwide.png',color: ColorOfTabBar.colorOfIcon,width: 25.0,),
      ),
      Tab(
        icon: Icon(Icons.notifications,color: ColorOfTabBar.colorOfIcon,),
      ),
      Tab(
        icon: Image.asset('assets/images/sign-out-option.png',color: ColorOfTabBar.colorOfIcon,width: 25.0,),
      ),

    ],
  );
}

double getScreenHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  return height;
}

double getScreenWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return width;
}

class CustomDivider extends StatelessWidget {
  final double widthOfDivider;
  const CustomDivider({
    Key key, this.widthOfDivider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: ColorOfTabBar.backgroundColorOfTabBar,width: 2),)

        ),
        width: getScreenWidth(context)*widthOfDivider,

      ),
    );
  }
}

class ButtonOfHomeTab extends StatelessWidget {
  final IconData imageOfButton;
  final String textOfButton;
  final Function function;
  const ButtonOfHomeTab({

    Key key, this.textOfButton, this.function, this.imageOfButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: getScreenWidth(context) * 0.8,
        child: ElevatedButton.icon(
          style:ElevatedButton.styleFrom(primary: ColorOfTabBar.backgroundColorOfTabBar,shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
          icon: Icon(imageOfButton,color: Colors.black),
          label: Text(textOfButton,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          onPressed: (){},

        ),
      ),
    );
  }
}

class TextFieldOfHomeTab extends StatelessWidget {
  final String textHint;
  const TextFieldOfHomeTab({
    Key key, this.textHint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: ColorOfTabBar.colorOfTextField,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 1),  // changes position of shadow
            ),
          ],

        ),
        width: getScreenWidth(context) * 0.8,
        child: TextField(
          textDirection: TextDirection.rtl,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: textHint,
              hintTextDirection: TextDirection.rtl ),),
      ),
    );
  }
}
