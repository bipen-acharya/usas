import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';
import 'package:usas/utils/image_path.dart';
import 'package:usas/views/auth/login/login_screen.dart';
import 'package:usas/views/auth/welcome/enroll_screen.dart';
import 'package:usas/views/auth/welcome/student_card_screen.dart';
import 'package:usas/widgets/custom/elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 60.0, // Adjust the size of the avatar
                backgroundImage: AssetImage(
                  ImagePath.logo1,
                ), // For local assets
                // backgroundColor: ,
              ),
            ),
            Center(child: Text("USAS", style: CustomTextStyles.f16W600())),
            Center(
              child: Text(
                "UNISC Adeliade Student Association",
                style: CustomTextStyles.f14W500(),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => EnrollScreen());
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 25, left: 15, right: 15),
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 13,
                  left: 19,
                  right: 19,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.extraWhite,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(4, 4),
                      blurRadius: 9,
                      color: AppColors.shadowColor,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        color: const Color.fromARGB(255, 94, 180, 128),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(4, 4),
                            blurRadius: 9,
                            color: AppColors.shadowColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How to Enroll at UNISC",
                          style: CustomTextStyles.f14W500(),
                        ),
                        Text(
                          "Step-by-step enrollment guide",
                          style: CustomTextStyles.f12W400(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => StudentCardScreen());
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 13,
                  left: 19,
                  right: 19,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.extraWhite,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(4, 4),
                      blurRadius: 9,
                      color: AppColors.shadowColor,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        color: const Color.fromARGB(255, 94, 180, 128),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(4, 4),
                            blurRadius: 9,
                            color: AppColors.shadowColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How to Apply for Student Card",
                          style: CustomTextStyles.f14W500(),
                        ),
                        Text(
                          "Get your student ID card",
                          style: CustomTextStyles.f12W400(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: CustomElevatedButton(
                title: "Login",
                onTap: () {
                  Get.to(() => (LoginScreen()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: AppColors.primaryColor, // Set the border color here
                    width: 1, // Set the border width
                  ),
                  backgroundColor: AppColors.backGroundColor,
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Register",
                  style: CustomTextStyles.f16W600(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
