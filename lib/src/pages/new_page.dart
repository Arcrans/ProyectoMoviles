import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'info_developer.dart';
import 'list_page.dart';

// ignore: must_be_immutable
class NewPage extends StatelessWidget {
  String user = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(18, 127, 45, 1),
        title: Text("AppRest"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (text) {
                  user = text;
                },
                decoration: InputDecoration(
                  labelText: 'Nombre de Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              RaisedButton(
                color: Color.fromRGBO(46, 187, 81, 1),
                textColor: Colors.white,
                shape: StadiumBorder(),
                child: Text(
                  "Iniciar Sesión",
                  style: TextStyle(fontSize: 18.0),
                ),
                onPressed: () {
                  if (password == "" && user == "") {
                    Toast.show("Campos vacios", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
                  } else if (password == user) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => List_Page()));
                  } else {
                    Toast.show("Usuario o Contraseña incorrecto", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
                  }
                },
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              RaisedButton(
                color: Color.fromRGBO(46, 187, 81, 1),
                textColor: Colors.white,
                shape: StadiumBorder(),
                child: Text(
                  "Acerca de",
                  style: TextStyle(fontSize: 18.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Info_Developer(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
