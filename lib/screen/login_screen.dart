import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_loading/app_button.dart';
import 'package:sample_loading/screen/login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController c = Get.put(LoginController());

    return Scaffold(
      body: Obx(() {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Login Screen'),
              AppButton(
                isLoading: c.isLoadingLogin.value,
                onTap: c.login,
              ),
            ],
          ),
        );
      }),
    );
  }
}
