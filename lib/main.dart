import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './pages/initial/login.dart';

void main(){
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => loginPage(),

      },
    );
  }
}