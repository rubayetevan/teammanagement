import 'package:flutter/material.dart';
import 'package:teammanagement/src/util/globalWidgets.dart';

import '../routes.dart';

class WorkAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Describe your work'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Save',
        backgroundColor: Colors.green,
        child: Icon(Icons.done),
        onPressed: () {
          routes.goBack(context);
        },
      ),
      body: Container(
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(
                height: 36,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'What did you do yesterday?',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'What will you work on today?',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Do you have any obstacles?',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
