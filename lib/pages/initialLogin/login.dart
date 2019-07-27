import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginState();
  }
}

class _loginState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage('assets/login/landscape.jpg'),
                    fit: BoxFit.cover)),
            child: loginForm()));
  }

  Widget loginForm() {
    return Container(
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
    return Text('form');
  }

  Widget submitBtn() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          
             RaisedButton(
              child: new Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Text('Log in'),
              ),
              onPressed: () {
                print('log in');
              },
              shape: StadiumBorder(),
            ),
          

          new RaisedButton(
            child: new Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: Text('Sign Up'),
            ),
            onPressed: () {
              print('sign up');
            },
            shape: StadiumBorder()
          )
        ],
      ),
    );
  }
}
