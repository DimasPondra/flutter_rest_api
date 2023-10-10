import 'package:flutter/material.dart';
import 'package:tutorial_rest_api/model/user.dart';
import 'package:tutorial_rest_api/services/user_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial Rest API"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(user.fullName),
              subtitle: Text(user.email),
            );
          }),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();

    setState(() {
      users = response;
    });
  }
}
