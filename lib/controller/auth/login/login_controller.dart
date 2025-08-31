import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  final keys = GlobalKey<FormState>();
  RxBool passwordObscure = true.obs;

  final passwordController = TextEditingController();

  final emailController = TextEditingController();

  RxBool isChecked = false.obs;
  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  // final loading = SimpleFontelicoProgressDialog(
  //   context: Get.context!,
  //   barrierDimisable: false,
  // );

  void onSubmit() async {
    if (keys.currentState!.validate()) {
      // Get.offAllNamed(DashScreen.routeName);
      // loading.show(message: "Please Wait ...");
      // await LoginRepo.userLogin(
      //   email: emailController.text,
      //   password: passwordController.text,
      //   onSuccess: (user) async {
      //     loading.hide();
      //     final box = GetStorage();
      //     await box.write(StorageKeys.USER, json.encode(user.toJson()));
      //     Get.put(CoreController()).loadCurrentUser();
      //     Get.offAllNamed(DashScreen.routeName);
      //     CustomSnackBar.success(title: "Login", message: "Login Successful");
      //   },
      //   onError: (message) {
      //     loading.hide();
      //     CustomSnackBar.error(title: "Login", message: message);
      //   },
      // );
    }
  }
}
