import 'package:flutter/material.dart';

///Collection of reusable components used across app

///UserPersonalDetails which has Full Name and email with Text widgets
class UserPersonalDetails extends StatelessWidget {
  final String fullName;
  final String email;
  final CrossAxisAlignment crossAxisAlignment;

  UserPersonalDetails(
      {required this.fullName,
      required this.email,
      required this.crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Title(title: fullName),
          SizedBox(
            height: 5,
          ),
          Email(email: email),
        ],
      ),
    );
  }
}

/// Title Widget
class Title extends StatelessWidget {
  final String title;
  Title({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}

///Email Widget
class Email extends StatelessWidget {
  final String email;
  Email({required this.email});

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      style: TextStyle(fontSize: 14, color: Colors.blue),
    );
  }
}
