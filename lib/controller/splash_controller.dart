import 'dart:async';
import 'package:get/get.dart';
import 'package:usas/controller/auth/login/login_controller.dart';
import 'package:usas/views/auth/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  final c = Get.put(LogInController());

  @override
  // void onInit() {
  //   Timer(const Duration(seconds: 5), () async {
  //     //Get.offAll(() => LoginScreen());
  //   });
  //   super.onInit();
  // }
  void onInit() {
    Timer(const Duration(seconds: 2), () async {
      Get.offAll(() => WelcomeScreen());
    });
    super.onInit();
  }
}
