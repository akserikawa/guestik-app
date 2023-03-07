import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guestik/auth/authentication_manager.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final AuthenticationManager _authManager = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              _authManager.logOut();
            },
            icon: const Icon(Icons.logout_rounded),
          )
        ],
      ),
      body: const Center(
        child: Text('HOME VIEW'),
      ),
    );
  }
}
