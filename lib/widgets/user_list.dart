import 'package:flutter/material.dart';
import 'package:users/view_models/user_view_model.dart';
import 'package:users/screens/user_details_screen.dart';
import 'package:users/widgets/circle_profile_image.dart';
import 'package:users/widgets/user_personal_details.dart';
import 'package:users/util/router/router.dart';

///`UserList` is reusable component which show list of user
///UserList is initialized with `UserViewModel`

class UserList extends StatelessWidget {
  final List<UserViewModel> users;

  UserList({required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.users.length,
      itemBuilder: (context, index) {
        final user = this.users[index];
        return InkWell(
          onTap: () {
            //Navigates to UserDetails page
            UsersRouter.pushPage(context, UserDetails(selectedUser: user));
          },
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: ListTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    UserProfileImage(
                      avatar: user.avatar,
                      size: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    UserPersonalDetails(
                      fullName: "${user.firstName} ${user.lastName}",
                      email: user.email,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
