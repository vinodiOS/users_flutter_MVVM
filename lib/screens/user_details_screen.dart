import 'package:flutter/material.dart';
import 'package:users/view_models/user_view_model.dart';
import 'package:users/widgets/circle_profile_image.dart';
import 'package:users/widgets/user_personal_details.dart';

class UserDetails extends StatelessWidget {
  final UserViewModel selectedUser;

  UserDetails({required this.selectedUser});

  @override
  Widget build(BuildContext context) {
    final space = SizedBox(
      height: 5,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Details of ${selectedUser.firstName} ${selectedUser.lastName}"),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UserProfileImage(
            avatar: selectedUser.avatar,
            size: 100,
          ),
          space,
          Text(
            "${selectedUser.firstName} ${selectedUser.lastName}",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          space,
          Text(
            selectedUser.email,
            style: TextStyle(fontSize: 14),
          ),
        ],
      )),
    );
  }
}
