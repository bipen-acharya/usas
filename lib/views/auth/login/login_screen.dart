import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usas/controller/auth/login/login_controller.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/validator.dart';
import 'package:usas/views/auth/login/register_screen.dart';
import 'package:usas/views/dashboard/dash_screen.dart';
import 'package:usas/widgets/custom/custom_password_fields.dart';
import 'package:usas/widgets/custom/custom_textfield.dart';
import 'package:usas/widgets/custom/elevated_button.dart';

import '../../../utils/custom_text_style.dart';

class LoginScreen extends StatelessWidget {
  final c = Get.put(LogInController());
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 100),
            child: Form(
              key: c.keys,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Good to see You!",
                      style: CustomTextStyles.f24W700(),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Let's continue the journey",
                      style: CustomTextStyles.f16W400(),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text("Email", style: CustomTextStyles.f14W400()),
                  const SizedBox(height: 10),
                  CustomTextField(
                    validator: Validators.checkEmailField,
                    controller: c.emailController,
                    hint: "email",
                    preIconPath: Icons.email,
                    // preIconSize: 14,
                    textCapitalization: TextCapitalization.none,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  Text("Password", style: CustomTextStyles.f14W400()),
                  const SizedBox(height: 5),
                  Obx(
                    () => CustomPasswordField(
                      validator: Validators.checkPasswordField,
                      hint: "password",
                      preIconPath: Icons.password,
                      preIconSize: 16,
                      eye: c.passwordObscure.value,
                      onEyeClick: c.onEyeCLick,
                      controller: c.passwordController,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          //Get.to(() => ForgotPasswordScreen());
                        },
                        child: Text(
                          "Forget Password?",
                          style: CustomTextStyles.f14W400(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  CustomElevatedButton(
                    title: "Login",
                    onTap: () {
                      // c.onSubmit();
                      Get.offAll(() => DashScreen());
                    },
                  ),
                  const SizedBox(height: 28),
                  Center(
                    child: Text(
                      "Don't have an account?",
                      style: CustomTextStyles.f14W400(),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.offAll(() => RegisterScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          right: 4,
                          top: 2,
                          bottom: 2,
                        ),
                        child: Text(
                          "Sign Up",
                          style: CustomTextStyles.f14W700(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
