import 'package:flutter/material.dart';

class UserPersonalDetails extends StatelessWidget {
  final String fullName;
  final String email;

  UserPersonalDetails({required this.fullName, required this.email});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            fullName,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            email,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
