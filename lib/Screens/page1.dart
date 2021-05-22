import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

  final String title;
  final String message;

  Page1(this.title, this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        leading: IconButton(
          onPressed: () => {
            Navigator.pop(context),
          },
          icon: Icon(Icons.home),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            Text(
                message,
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () => {
          Navigator.pushNamed(context, '/page2', arguments: ScreenArgumentsPage1('Page 2', 'This a second page')),
        },
      ),
    );
  }
}

class ScreenArgumentsPage1{
  final String title;
  final String message;

  ScreenArgumentsPage1(this.title, this.message);
}
