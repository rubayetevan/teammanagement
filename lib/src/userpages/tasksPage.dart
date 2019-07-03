import 'package:flutter/material.dart';
import 'package:teammanagement/src/blocs/loginBloc.dart';
import 'package:teammanagement/src/util/globalWidgets.dart';

class TaskPage extends StatelessWidget{
  ScrollController _controller;
  int _page = 1;
  int _lastPage;
  bool _dataArrieved = false;


  @override
  Widget build(BuildContext context) {
    _controller = ScrollController()..addListener(_scrollListener);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Assigned tasks'),
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
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_run)),
              Tab(icon: Icon(Icons.watch_later)),
              Tab(icon: Icon(Icons.done_all)),
            ],
          ),
        ),
        body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
          Container(
            color: Colors.white10,
            child:_onGoingTaskList() ,
          ),
          Container(
            color: Colors.white12,
            child:_laterTaskList() ,
          ),
          Container(
            color: Colors.white24,
            child:_doneTaskList() ,
          ),
        ])
      ),
    );
  }

  Widget _doneTaskList() {
    // bloc.showJoblist(_page);
    return StreamBuilder(
        stream: null,
        builder: (context, snapshot) {
          //if (snapshot.hasData) {
          _dataArrieved = true;
          _lastPage = 1;
          return ListView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key('a'),
                onDismissed: (DismissDirection dir){
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(dir==DismissDirection.startToEnd?"Item removed":"Item Liked"),
                      action: SnackBarAction(
                          label: "UNDO",
                          onPressed: (){

                          }
                      ),
                    ),
                  );

                },
                background: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.watch_later),
                        Text('Move to later task')
                      ],
                    ),
                  ),
                  color: Colors.yellow,
                  alignment: Alignment.centerLeft,
                ),
                secondaryBackground: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.directions_run),
                        Text('Move to Running task')
                      ],
                    ),
                  ),
                  color: Colors.green,
                  alignment: Alignment.centerRight,
                ),
                child: taskViewWidget('t','y','o','high',16,16,5,5),
              );
            },
            itemCount: 10,
          );
          // }
          /*else{
            return Center(
              child: Text("Loading"),
            );
          }*/
        });


  }
  Widget _onGoingTaskList() {
    // bloc.showJoblist(_page);
    return StreamBuilder(
        stream: null,
        builder: (context, snapshot) {
          //if (snapshot.hasData) {
          _dataArrieved = true;
          _lastPage = 1;
          return ListView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key('a'),
                onDismissed: (DismissDirection dir){
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(dir==DismissDirection.startToEnd?"Item removed":"Item Liked"),
                      action: SnackBarAction(
                          label: "UNDO",
                          onPressed: (){

                          }
                      ),
                    ),
                  );

                },
                background: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.done_all),
                        Text('Move to done task')
                      ],
                    ),
                  ),
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                ),
                secondaryBackground: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.watch_later),
                        Text('Move to later task')
                      ],
                    ),
                  ),
                  color: Colors.yellow,
                  alignment: Alignment.centerRight,
                ),
                child: taskViewWidget('t','y','o','high',16,16,5,5),




              );
            },
            itemCount: 10,
          );
          // }
          /*else{
            return Center(
              child: Text("Loading"),
            );
          }*/
        });


  }
  Widget _laterTaskList() {
    // bloc.showJoblist(_page);
    return StreamBuilder(
        stream: null,
        builder: (context, snapshot) {
          //if (snapshot.hasData) {
          _dataArrieved = true;
          _lastPage = 1;
          return ListView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key('a'),
                onDismissed: (DismissDirection dir){
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(dir==DismissDirection.startToEnd?"Item removed":"Item Liked"),
                      action: SnackBarAction(
                          label: "UNDO",
                          onPressed: (){

                          }
                      ),
                    ),
                  );

                },
                background: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.directions_run),
                        Text('Move to running task')
                      ],
                    ),
                  ),
                  color: Colors.green,
                  alignment: Alignment.centerLeft,
                ),
                secondaryBackground: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.done_all),
                        Text('Move to done task')
                      ],
                    ),
                  ),
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                ),
                child: taskViewWidget('t','y','o','high',16,16,5,5),
              );
            },
            itemCount: 10,
          );
          // }
          /*else{
            return Center(
              child: Text("Loading"),
            );
          }*/
        });


  }


  void _scrollListener() {

    if (_controller.position.extentAfter < 500 && _page < _lastPage && _dataArrieved) {
      _page++;
      _dataArrieved = false;
      //bloc.showJoblist(_page);
    }

  }

}