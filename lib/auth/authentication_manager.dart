import 'package:get/get.dart';
import 'package:guestik/auth/cache_manager.dart';

class AuthenticationManager extends GetxController with CacheManager {
  final isLogged = false.obs;

  void logOut() {
    isLogged.value = false;
    removeToken();
  }

  void login(String? token) async {
    isLogged.value = true;
    //Token is cached
    await saveToken(token);
  }

  void checkLoginStatus() {
    final token = getToken();
    // todo: decode jwt and check expiration
    if (token != null) {
      isLogged.value = true;
    }
  }
}