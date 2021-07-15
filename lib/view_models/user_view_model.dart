import 'package:users/models/user.dart';

///UserViewModel with gettable properties
class UserViewModel {
  final User user;

  UserViewModel({required this.user});

  String get firstName {
    return this.user.firstName ?? "";
  }

  String get lastName {
    return this.user.lastName ?? "";
  }

  String get email {
    return this.user.email ?? "";
  }

  String get avatar {
    return this.user.avatar ?? "";
  }
}
