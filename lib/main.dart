import 'package:flutter/material.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Navigation"),
      ),
      body: Center(
        child: Text(
            "Home page",
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: ()=>{
          Navigator.pushNamed(context, '/page1', arguments: ScreenArguments('Page1', 'Hello | This a first page')),
        },
      ),
    );
  }
}

class ErrorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error routes'),
      ),
      body: Center(
        child: Text('Error Routes'),
      ),
    );
  }
}


class ScreenArguments{
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}