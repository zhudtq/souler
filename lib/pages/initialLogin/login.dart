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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('assets/login/landscape.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: loginForm()
      )
    );
  }

  Widget loginForm() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('explor'),
            Text('sign up')
          ],
        ),
      )
    );
  }

}