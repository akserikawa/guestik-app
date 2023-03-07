import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guestik/auth/authentication_manager.dart';
import 'package:guestik/login/dto/login_request.dart';
import 'package:guestik/login/service/login_service.dart';

class LoginViewModel extends GetxController {
  late final LoginService _loginService;
  late final AuthenticationManager _authManager;

  @override
  void onInit() {
    super.onInit();
    _loginService = Get.put(LoginService());
    _authManager = Get.find();
  }

  Future<void> login(String email, String password) async {
    final response = await _loginService.login(
      LoginRequest(
        email: email,
        password: password
      )
    );

    if (response != null) {
      _authManager.login(response.token);
    } else {
      Get.defaultDialog(
        middleText: 'User not found!',
        textConfirm: 'OK',
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back();
        }
      );
    }
  }
}