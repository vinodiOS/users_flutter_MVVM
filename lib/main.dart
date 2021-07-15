import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users/screens/user_list_screen.dart';
import 'package:users/view_models/user_list_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => UserListViewModel(),
        child: UserListScreen(),
      ),
    );
  }
}
