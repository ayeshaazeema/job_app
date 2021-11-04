import 'package:flutter/material.dart';
import 'package:job_app/model/user_model.dart';

class UserProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel newUser) {
    _user = newUser;
    notifyListeners();
  }
}
