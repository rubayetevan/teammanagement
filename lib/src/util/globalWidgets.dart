import 'package:flutter/material.dart';

Widget workViewWidget(
    String _todayTask,
    String _previousTask,
    String _obstacles,
    double _leftmMrgin,
    double _rightMargin,
    double _topMargin,
    double _bottomMargin) {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.fromLTRB(
        _leftmMrgin, _topMargin, _rightMargin, _bottomMargin),
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(_todayTask),
          Text(_previousTask),
          Text(_obstacles)
        ],
      ),
    ),
  );
}

Widget noteViewWidget(String _notes, String _type, double _leftmMrgin,
    double _rightMargin, double _topMargin, double _bottomMargin) {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.fromLTRB(
        _leftmMrgin, _topMargin, _rightMargin, _bottomMargin),
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(_notes),
        ],
      ),
    ),
  );
}

Widget taskViewWidget(
    String _taskName,
    String _taskDetails,
    String _deadline,
    String _priyority,
    double _leftmMrgin,
    double _rightMargin,
    double _topMargin,
    double _bottomMargin) {
  return Flex(
    direction: Axis.horizontal,
    children: <Widget>[
      Expanded(
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(
              _leftmMrgin, _topMargin, _rightMargin, _bottomMargin),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_taskName),
                Text(_taskDetails),
                Text(_deadline),
                Text(_priyority)
              ],
            ),
          ),
        ),
      )
    ],
  );
}
