
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterController extends GetxController {
GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool passwordObscure = false.obs;
  RxBool confirmObscure = false.obs;

  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNoController = TextEditingController();

  RxBool isChecked = false.obs;
  void passwordOnEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  void confirmPasswordOnEyeCLick() {
    confirmObscure.value = !confirmObscure.value;
  }

  // final loading = SimpleFontelicoProgressDialog(
  //   context: Get.context!,
  //   barrierDimisable: false,
  // );

  void onSubmit() async {
    if (formKey.currentState!.validate()) {
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

  Rxn<File> imageFile = Rxn();
  // File? imageFile;
  getSingleImageFromGallery() async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      // print(pickedFile!.path);
      if (pickedFile != null) {
        imageFile.value = File(pickedFile.path);
      }
    } on PlatformException catch (e) {
      log("faild to load file ------->$e");
    }
    update();
  }
}
