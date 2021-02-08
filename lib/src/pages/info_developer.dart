import 'package:flutter/material.dart';

// ignore: camel_case_types
class Info_Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                child: Image.network(
                  "https://picsum.photos/250?image=2",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 50),
              Text("José Luis Álvarez Morales"),
              SizedBox(height: 50),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text("Atras"),
                color: Color.fromRGBO(46, 187, 81, 1),
                textColor: Colors.white,
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
