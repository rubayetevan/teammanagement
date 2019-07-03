import 'package:flutter/material.dart';
import 'package:teammanagement/src/util/globalWidgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add work',
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {},
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
