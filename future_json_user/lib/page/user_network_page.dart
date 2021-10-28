import 'package:flutter/material.dart';
import 'package:future_json_user/models/user.dart';
import 'package:future_json_user/page/user_page.dart';
import 'package:future_json_user/services/service.dart';
import 'package:http/http.dart' as http;

class UserNetWorkPage extends StatefulWidget {
  const UserNetWorkPage({Key? key}) : super(key: key);

  @override
  _UserNetWorkPageState createState() => _UserNetWorkPageState();
}

class _UserNetWorkPageState extends State<UserNetWorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetchUser(http.Client()),
          builder: (context, AsyncSnapshot snapshot) {
            final users = snapshot.data;
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return buildUsers(users);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Widget buildUsers(List<Users> users) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return GestureDetector(
            onTap: () {
              print('you clicked');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserPage(users: user)));
            },
            child: ListTile(
              leading: Icon(
                Icons.person_pin,
                size: 30,
                color: Colors.lime,
              ),
              title: Text(user.name),
              subtitle: Text(user.email),
              trailing: Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.blueGrey,
              ),
            ),
          );
        });
  }
}
