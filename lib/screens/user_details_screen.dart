import 'package:flutter/material.dart';
import 'package:users/view_models/user_view_model.dart';
import 'package:users/widgets/circle_profile_image.dart';
import 'package:users/widgets/user_personal_details.dart' as reusableWidgets;

/// UserDetails Screen shows details of user after selection from user list along
/// with profile image, full name and email.

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UserProfileImage(
            avatar: selectedUser.avatar,
            size: 100,
          ),
          space,
          reusableWidgets.Title(
              title: "${selectedUser.firstName} ${selectedUser.lastName}"),
          space,
          reusableWidgets.Email(
            email: selectedUser.email,
          )
        ],
      )),
    );
  }
}
