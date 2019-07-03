import 'package:flutter/material.dart';
import 'package:teammanagement/src/blocs/loginBloc.dart';
import 'package:teammanagement/src/util/globalWidgets.dart';

import '../routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              //loginBloc.showLogoutAlert(context);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add work',
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {
          routes.routeToWorkAddPage(context);
        },
      ),
      body: Container(
        color: Colors.white10,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Text('Todays work'),
            workViewWidget('today','previous','obstacles',16,16,16,16),
            SizedBox(
              height: 20,
            ),
            Text('Yesterday work'),
            workViewWidget('today','previous','obstacles',16,16,16,16),
          ],
        ),
      ),
    );
  }
}
