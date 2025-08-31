import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';
import 'package:usas/widgets/custom/elevated_button.dart';

class JoinNowClubScreen extends StatelessWidget {
  const JoinNowClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.extraWhite,
        elevation: 5,
        shadowColor: AppColors.shadowColor,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        title: Text(
          "Join UNISC Club",
          style: CustomTextStyles.f14W600(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            // height: 135,
            width: Get.width / 1,
            decoration: BoxDecoration(
              color: AppColors.extraWhite,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.borderColor,
                  blurRadius: 2.0,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 9),
                  Text("About UNISC SA", style: CustomTextStyles.f16W600()),
                  const SizedBox(height: 9),
                  Text(
                    "The UNISC Student Association (USAS) is a vibrant community of students dedicated to enhancing the university experience through various activities, workshops, and networking opportunities.",
                    style: CustomTextStyles.f14W400(),
                    // textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 9),
                  Text(
                    "Benefits of Joining:",
                    style: CustomTextStyles.f16W600(),
                  ),
                  const SizedBox(height: 9),
                  Text(
                    "The UNISC Student Association (USAS) is a vibrant community of students dedicated to enhancing the university experience through various activities, workshops, and networking opportunities.",
                    style: CustomTextStyles.f14W400(),
                    // textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomElevatedButton(title: "Join Now", onTap: () {}),
      ),
    );
  }
}
