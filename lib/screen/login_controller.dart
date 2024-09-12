import 'package:get/get.dart';
import 'package:sample_loading/repo/login_repo.dart';

class LoginController extends GetxController {
  var isLoadingLogin = false.obs;

  void login() {
    isLoadingLogin(true);
    LoginRepo().login('userName', 'password').then((value) {
      isLoadingLogin.value = false;
    });
  }
}
