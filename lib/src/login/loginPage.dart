import 'package:flutter/material.dart';
import 'package:teammanagement/src/blocs/loginBloc.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              _logoSVG(),
              SizedBox(
                height: 40.0,
              ),
              _headingText(),
              SizedBox(
                height: 20.0,
              ),
              _usernameTextField(),
              SizedBox(
                height: 20.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 20.0,
              ),
              _loginButton(),
              SizedBox(
                height: 100.0,
              ),
            ],
          )),
    );
  }

  Widget _usernameTextField() {
    return StreamBuilder(
      stream: loginBloc.username,
      builder: (context, snapshot) {
        return TextField(
          onChanged: loginBloc.changeUsername,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter your username',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget _passwordTextField() {
    return StreamBuilder(
      stream: loginBloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: loginBloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter your password',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget _loginButton() {
    return StreamBuilder(
      stream: loginBloc.loginDataValid,
      builder: (context, snapshot) {
        return RaisedButton(
          onPressed: snapshot.hasData
              ? () {
            loginBloc.submitLoginData(context);
          }
              : null,
          child: Text('Login'),
        );
      },
    );
  }

  Widget _logoSVG() {
    return Container(
        height: 100.0,
        width: 100.0,
        child: Text('Hello')
    );
  }

  Widget _headingText() {
    return Text('Login',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 36.0,
        ));
  }
}
