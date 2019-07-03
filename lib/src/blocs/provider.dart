import 'package:flutter/material.dart';
import './bottomNavBloc.dart';
import './loginBloc.dart';


class Provider extends InheritedWidget{


  final _bottomNavBloc =BottomNavBloc();
  final _loginBloc =LoginBloc();


  Provider({Key key,Widget child}) :super(key:key,child:child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static BottomNavBloc bottomNavBloc (BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider)as Provider)._bottomNavBloc;
  }
  static LoginBloc loginBloc (BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider)as Provider)._loginBloc;
  }

}