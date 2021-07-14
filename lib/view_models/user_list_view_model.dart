import 'package:flutter/material.dart';
import 'package:users/view_models/user_view_model.dart';
import 'package:users/services/user_service.dart';

class MovieListViewModel extends ChangeNotifier {
  List<UserViewModel> users = [];

  Future<void> fetchUsers() async {
    final results = await UserService().fetchUsers();
    if (results != null) {
      users = results.map((e) => UserViewModel(user: e)).toList();
      /*
      results.forEach((element) {
        users.add(UserViewModel(user: element));
      });*/
    }
    notifyListeners();
  }
}
