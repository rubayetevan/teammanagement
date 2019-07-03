import 'package:flutter/material.dart';
import 'package:teammanagement/src/blocs/userBloc.dart';
import 'homePage.dart';
import 'notePage.dart';
import 'summaryPage.dart';
import 'tasksPage.dart';

class MainPage extends StatelessWidget {
  final List<Widget> _children = [
    HomePage(),
    TaskPage(),
    NotePage(),
    SummaryPage()
  ];

  @override
  Widget build(BuildContext context) {
    return bottomBar();
  }

  Widget bottomBar() {
    return StreamBuilder(
        stream: userBloc.pageIndex,
        builder: (context, snapshot) {
          print("snapshot data = ${snapshot.data}");
          int _currentIndex = 0;
          if (snapshot.hasData) {
            _currentIndex = snapshot.data;
          }
          return Scaffold(

            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: userBloc.changePageIndex,
              currentIndex: _currentIndex,
              // this will be set when a new tab is tapped
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.developer_board),
                  title: Text('Tasks'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.mode_edit), title: Text('Notes')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.pie_chart), title: Text('Summary')),
              ],
            ),
            body: _children[_currentIndex],
          );
        });
  }


}
