import 'package:flutter/material.dart';
import 'package:teammanagement/src/userpages/mainPage.dart';
import 'package:teammanagement/src/userpages/workAddPage.dart';


class Routes{
  void routeToUserMainPage(BuildContext context){
    Navigator.pushReplacement( context,  MaterialPageRoute( builder: (context) => MainPage()));
  }
  void routeToWorkAddPage(BuildContext context){
    Navigator.push( context, MaterialPageRoute( builder: (context) => WorkAddPage()));
  }
  void goBack(BuildContext context){
    Navigator.of(context).pop();
  }

}

final routes = Routes();