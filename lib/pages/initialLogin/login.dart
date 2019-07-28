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
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(),
          TextField(),
          TextField(),
        ],
      ),
    );
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
                    print('sign in');
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
