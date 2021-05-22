import 'package:flutter/material.dart';
import 'main.dart';
import './Screens/page1.dart';
import './Screens/page2.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name) {
      case '/':

        return MaterialPageRoute(builder: (context) => HomePage());
      case '/page1':
        final args = settings.arguments as ScreenArguments;
        return MaterialPageRoute(builder: (context) => Page1(args.title, args.message));
      case '/page2':
        final args = settings.arguments as ScreenArgumentsPage1;
        return MaterialPageRoute(builder: (context) => Page2(args.title, args.message));
    }
    return MaterialPageRoute(builder: (context) => ErrorPage());
  }
}