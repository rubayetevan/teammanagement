import 'package:flutter/material.dart';
import 'package:teammanagement/src/userpages/mainPage.dart';


class Routes{
  void routeToUserMainPage(BuildContext context){
    Navigator.pushReplacement( context,  MaterialPageRoute( builder: (context) => MainPage()));
  }

}

final routes = Routes();