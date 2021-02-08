import 'package:flutter/material.dart';

import 'first_page.dart';

// ignore: camel_case_types
class List_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
      appBar: AppBar(
        // ignore: deprecated_member_use
        leading: RaisedButton(
          color: Color.fromRGBO(18, 127, 45, 1),
          child: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color.fromRGBO(18, 127, 45, 1),
        title: Text("Lista de Usuarios"),
      ),
      body: UserList(),
    );
  }
}

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List users;

  @override
  void initState() {
    users = [
      'Jose',
      'Luis',
      'Alvarez',
      'Morales',
      'Catalina',
      'Bruno',
      'Napoli',
      'Dani',
      'Eduardo',
      'Ballinas',
      'Edwin',
      'Davila',
      'Daniel',
      'Miceli',
      'Landa',
      'David',
      'Jhonathan',
      'Angel',
      'Carlos',
      'Miguel',
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        int numero = index + 1;
        return ListTile(
          title: Text(users[index]),
          leading: Text("$numero"),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => First_Page(users[index]),
            ));
          },
        );
      },
      itemCount: users.length,
    );
  }
}
