import 'dart:async';

import 'package:user_repository/src/models/models.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;

    // todo: decode JWT and retrieve user info
    return Future.delayed(const Duration(milliseconds: 300),
        () => _user = User(const Uuid().v4(), 'example@guestik.com'));
  }
}
