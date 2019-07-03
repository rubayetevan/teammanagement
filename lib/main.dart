import 'package:flutter/material.dart';
import 'package:teammanagement/src/login/loginPage.dart';


void main() => runApp(TeamManageApp());

class TeamManageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
        stream: null,
        builder: (context, snapshot) {
          var isLoggedIn = false;
          if (snapshot.hasData) {
            isLoggedIn = snapshot.data;
          }
          return MaterialApp(
            title: 'BdjobsTeam',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.deepOrange,
            ),
            home:LoginPage(),
            //home: OrderListPage(),
          );
        });
  }
}