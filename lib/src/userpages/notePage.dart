import 'package:flutter/material.dart';
import 'package:teammanagement/src/blocs/loginBloc.dart';
import 'package:teammanagement/src/util/globalWidgets.dart';

class NotePage extends StatelessWidget{
  ScrollController _controller;
  int _page = 1;
  int _lastPage;
  bool _dataArrieved = false;



  @override
  Widget build(BuildContext context) {
    _controller = ScrollController()..addListener(_scrollListener);
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              loginBloc.showLogoutAlert(context);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add notes',
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Container(
        color: Colors.white10,
        child: noteList(),
      ),
    );
  }

  Widget noteList() {
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
              return noteViewWidget('t','y',16,16,5,5);
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