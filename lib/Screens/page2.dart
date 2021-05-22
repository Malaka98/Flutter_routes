import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  final String title;
  final String message;

  Page2(this.title, this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {
            Navigator.pop(context),
          },
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
    );
  }
}
