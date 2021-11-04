import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:job_app/model/user_model.dart';

class AuthProvider with ChangeNotifier {
  Future<UserModel> register(
      String name, String email, String password, String goal) async {
    try {
      var body = {
        'name': name,
        'email': email,
        'password': password,
        'goal': goal
      };

      var response = await http.post(
          Uri.parse('https://bwa-jobs.herokuapp.com/register'),
          body: body);

      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        var status = 'Failed';

        return register(status, status, status, status);
      }
    } catch (e) {
      return register(e.toString(), e.toString(), e.toString(), e.toString());
    }
  }

  Future<UserModel> login(String email, String password) async {
    try {
      var body = {'email': email, 'password': password};

      var response = await http
          .post(Uri.parse('https://bwa-jobs.herokuapp.com/login'), body: body);

      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        var status = 'Failed';

        return login(status, status);
      }
    } catch (e) {
      return login(e.toString(), e.toString());
    }
  }
}
