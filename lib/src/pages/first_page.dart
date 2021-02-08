import 'package:flutter/material.dart';

// ignore: camel_case_types
class First_Page extends StatelessWidget {
  final String user;

  First_Page(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 127, 45, 1),
      appBar: AppBar(
        // ignore: deprecated_member_use
        leading: RaisedButton(
          color: Color.fromRGBO(46, 187, 81, 1),
          child: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color.fromRGBO(46, 187, 81, 1),
        title: Text("Usuario"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$user",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
