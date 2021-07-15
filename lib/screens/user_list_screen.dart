import 'package:flutter/material.dart';
import 'package:users/view_models/user_list_view_model.dart';
import 'package:users/widgets/user_list.dart';
import 'package:provider/provider.dart';

/// Entry page of app which lists all users.

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<UserListViewModel>(context, listen: false).fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<UserListViewModel>(context);
    return Scaffold(
        appBar: AppBar(title: Text("Users")),
        body: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Expanded(child: UserList(users: vm.users)),
              ],
            )));
  }
}
