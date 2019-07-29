import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginState();
  }
}

class _loginState extends State<loginPage> {
  final _loginFormKey = GlobalKey<FormState>();
  final userIdController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    userIdController.addListener(_showUserId);
    passwordController.addListener(_showPassword);
  }

  @override
  void dispose() {
    userIdController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String _showUserId() {
    return userIdController.text;
  }

  String _showPassword() {
    return passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage('assets/login/explorer.jpg'),
                    fit: BoxFit.cover)),
            child: loginForm()));
  }

  Widget loginForm() {
    return Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            logo(),
            mainForm(),
            submitBtn(),
          ],
        ));
  }

  Widget logo() {
    return Container(
      child: Text(
        'Wake U up',
        style: TextStyle(color: Colors.blue[300], fontSize: 30.0),
      ),
    );
  }

  Widget mainForm() {
    return Container(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Form(
          key: _loginFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Theme(
                data: new ThemeData(primaryColor: Colors.white),
                child: TextFormField(
                  controller: userIdController,
                  style: new TextStyle(color: Colors.white),
                  decoration: new InputDecoration(
                    labelText: 'User ID',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white
                      ),
                    ),
                  ),
                  validator: (userId) {
                    if (userId.isEmpty) {
                      return 'Please enter validated ID';
                    }
                    return null;
                  },
                ),
              ),
              
              Theme(
                data: new ThemeData(primaryColor: Colors.white),
                child: TextFormField(
                  controller: passwordController,
                  style: new TextStyle(color: Colors.white),
                  decoration: new InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white
                      ),
                    ),
                  ),
                  validator: (password) {
                    if (password.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),

            ],
          ),
        ));
  }

  Widget submitBtn() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: new RaisedButton(
                  color: Colors.white70,
                  child: new Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        letterSpacing: 2.8,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  onPressed: () {
                    print(_loginFormKey.currentState.validate());
                    if (_loginFormKey.currentState.validate()) {
                      print(_showUserId());
                      print(_showPassword());
                    }
                  },
                  shape: StadiumBorder(),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: new RaisedButton(
                  color: Colors.white70,
                  child: new Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        letterSpacing: 2.8,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  onPressed: () {
                    print('sign up');
                  },
                  shape: StadiumBorder(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}