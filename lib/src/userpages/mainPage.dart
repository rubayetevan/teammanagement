import 'package:flutter/material.dart';
import 'package:teammanagement/src/blocs/bottomNavBloc.dart';
import 'package:teammanagement/src/blocs/providers/bottomNavProvider.dart';
import 'homePage.dart';
import 'notePage.dart';
import 'summaryPage.dart';
import 'tasksPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _children = [
    HomePage(),
    TaskPage(),
    NotePage(),
    SummaryPage()
  ];

  BottomNavBloc bloc;
  int _currentIndex = 0;

  @override
  void didChangeDependencies() {
    bloc = BottomNavProvider.of(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return bottomBar();
  }

  Widget bottomBar() {
    return StreamBuilder(
        stream: bloc.pageIndex,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _currentIndex = snapshot.data;
          }
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: bloc.changePageIndex,
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
