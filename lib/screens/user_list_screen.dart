import 'package:flutter/material.dart';
import 'package:users/view_models/user_list_view_model.dart';
import 'package:users/widgets/body_builder.dart';
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
    return Consumer(
      builder:
          (BuildContext context, UserListViewModel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Users'),
          ),
          body: _buildBody(viewModel),
        );
      },
    );
  }

  Widget _buildBody(UserListViewModel viewModel) {
    return BodyBuilder(
      apiRequestStatus: viewModel.apiRequestStatus,
      child: _buildBodyList(viewModel),
      reload: () => viewModel.fetchUsers(),
    );
  }

  _buildBodyList(UserListViewModel viewmodel) {
    return Container(
        padding: EdgeInsets.all(10), child: UserList(users: viewmodel.users));
  }
}
