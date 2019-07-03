import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../routes.dart';
import 'package:teammanagement/src/blocs/validators/loginValidators.dart';

class LoginBloc extends LoginValidators {

  final _username = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get username => _username.stream.transform(validateUsername);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Function(String) get changeUsername => _username.sink.add;
  Function(String) get changePassword => _password.sink.add;
  Stream<bool> get loginDataValid => Observable.combineLatest2(username, password, (e, p) => true);


  dispose() {
    _username.close();
    _password.close();
  }


  submitLoginData(BuildContext context) {
    final email = _username.value;
    final password = _password.value;

    print('email: $email \n password: $password');

    routes.routeToUserMainPage(context);

    /*repository.getLoginData(context, email, password).then((onValue) {
      if (onValue.login[0].messageType == '1') {
        sessionManager.createSession(onValue.login[0].userName,
            onValue.login[0].gid, onValue.login[0].email);
        routes.routeToHomepage(context);
      } else {
        Toast.show('Wrong username or password!', context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
      }
    });*/
  }

  void showLogoutAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Logout'),
            content: Text('Are you sure you want to logout from snacks app?'),
            actions: <Widget>[
              FlatButton(
                child: Text('Yes'),
                onPressed: () {
                  // bloc.logout(context);
                },
              ),
              FlatButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

}