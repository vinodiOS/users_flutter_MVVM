import 'package:flutter/material.dart';
import 'package:users/view_models/user_view_model.dart';
import 'package:users/services/user_service.dart';
import 'package:users/util/enum/api_request_status.dart';
import 'package:users/util/functions.dart';
import 'package:fluttertoast/fluttertoast.dart';

///This class defines async functions to fetch users from UserService class

class UserListViewModel extends ChangeNotifier {
  List<UserViewModel> users = [];
  APIRequestStatus apiRequestStatus = APIRequestStatus.loading;

  ///fetches data from UserService and map it to UserViewModel
  Future<void> fetchUsers() async {
    try {
      apiRequestStatus = APIRequestStatus.loading;
      final results = await UserService().fetchUsers();
      if (results != null) {
        users = results.map((e) => UserViewModel(user: e)).toList();
        apiRequestStatus = APIRequestStatus.loaded;
      }
      notifyListeners();
    } on Exception catch (error) {
      checkError(error);
      throw error;
    }
  }

  void checkError(e) {
    if (Functions.checkConnectionError(e)) {
      apiRequestStatus = APIRequestStatus.connectionError;
      showToast('Connection error');
    } else {
      apiRequestStatus = APIRequestStatus.error;
      showToast('Something went wrong, please try again');
    }
  }

  showToast(msg) {
    Fluttertoast.showToast(
      msg: '$msg',
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 1,
    );
  }
}
