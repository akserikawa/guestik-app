import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guestik/auth/authentication_manager.dart';
import 'package:guestik/home_view.dart';
import 'package:guestik/login/login_view.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationManager authManager = Get.find();

    return Obx(() {
      return authManager.isLogged.value ? const HomeView() : const LoginView();
    });
  }
}