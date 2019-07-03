import 'package:flutter/material.dart';
import '../bottomNavBloc.dart';


class BottomNavProvider extends InheritedWidget{


  final bottomNavBloc =BottomNavBloc();


  BottomNavProvider({Key key,Widget child}) :super(key:key,child:child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static BottomNavBloc of (BuildContext context){
    return (context.inheritFromWidgetOfExactType(BottomNavProvider)as BottomNavProvider).bottomNavBloc;
  }

}