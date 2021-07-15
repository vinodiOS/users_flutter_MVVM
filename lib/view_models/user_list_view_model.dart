import 'package:flutter/material.dart';
import 'package:users/view_models/user_view_model.dart';
import 'package:users/services/user_service.dart';

///This class defines async functions to fetch users from UserService class

class UserListViewModel extends ChangeNotifier {
  List<UserViewModel> users = [];

  ///fetches data from UserService and map it to UserViewModel
  Future<void> fetchUsers() async {
    try {
      final results = await UserService().fetchUsers();
      if (results != null) {
        users = results.map((e) => UserViewModel(user: e)).toList();
      }
      notifyListeners();
    } on Exception catch (error) {
      print(error);
      Future.error(error);
    }
  }
}
