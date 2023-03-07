import 'package:guestik/config/config.dart';
import 'package:guestik/login/dto/login_request.dart';
import 'package:guestik/login/dto/login_response.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

class LoginService extends GetConnect {
  Future<LoginResponse?> login(LoginRequest model) async {
    final response = await post(Config.loginEndpoint, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return LoginResponse.fromJson(response.body);
    } else {
      return null;
    }
  }
}
