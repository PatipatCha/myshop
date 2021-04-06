import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_myshop/models/Users.dart';
import 'HiScreen.dart';
import 'package:flutter_myshop/pages/NotConnectedScreen.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'MainMenuScreen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  Users _user = Users();

  bool _isLoginSession;
  bool _isConnected;

  Future<void> _checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        setState(() {
          _isConnected = true;
        });
      }
    } on SocketException catch (err) {
      _isConnected = false;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NotConnectedScreen()),
      );
    }
  }

  Future<void> _checkLoginSession() async {
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      final loginUsername = _prefs.getString('username') ?? '';
      if (loginUsername != '') {
        setState(() {
          _isLoginSession = true;
        });
      }
    } on SocketException catch (err) {
      setState(() {
        _isLoginSession = false;
      });
      print(err);
    }
  }

  @override
  void initState() {
    _checkInternetConnection();
    _checkLoginSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var logo = Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Center(
        child: Container(
          width: 200,
          height: 150,
          child: Image.asset('assets/images/myshop.png'),
        ),
      ),
    );

    var PasswordField = Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      child: TextFormField(
        validator: RequiredValidator(errorText: 'Input Password'),
        onSaved: (String password) {
          _user.password = password;
        },
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );

    var usernameField = Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
      child: TextFormField(
        validator: MultiValidator([
          RequiredValidator(errorText: 'Input Username'),
        ]),
        onSaved: (String username) {
          _user.username = username;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Username',
        ),
      ),
    );

    checkLogin(_user) async {
      var username = _user.username;
      var password = _user.password;

      if (username == 'rmx' && password == 'adminn') {
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text('Please Wait..'),
        //   ),
        // );
        //
        SharedPreferences _prefs = await SharedPreferences.getInstance();
        _prefs.setString('username', username);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainMenuScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Username or Password is Incorrect'),
          ),
        );
      }
    }

    var Loginbutton = Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            checkLogin(_user);
          }
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );

    Widget LoginForm = SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 15),
            logo,
            SizedBox(height: 50),
            usernameField,
            SizedBox(height: 10),
            PasswordField,
            SizedBox(height: 25),
            Loginbutton,
          ],
        ),
      ),
    );

    var NotConnectedForm = Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/images/disconnect.png",
            width: 70,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Please check you network connection',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: _isLoginSession == true ? MainMenuScreen() : LoginForm,
    );
  }
}
