import 'dart:convert';
import 'package:users/models/user.dart';
import 'package:users/util/globals.dart';
import 'package:http/http.dart' as http;

///`UserService` performs http operations to fetch data from server
class UserService {
  ///performs http GET operation to fetch data
  Future<List<User>?> fetchUsers() async {
    final url = Uri.parse(Globals.baseURL);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return UserData.fromJson(body).data;
    } else {
      throw Exception("Server Error!");
    }
  }
}
