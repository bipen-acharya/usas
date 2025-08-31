import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';

class StudentCardScreen extends StatelessWidget {
  const StudentCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
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
          "Student Card",
          style: CustomTextStyles.f14W600(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(right: 19, left: 19, top: 31),
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
          child: Column(
            children: [
              Container(
                height: 8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.amber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      "How to apply for Student Card",
                      style: CustomTextStyles.f14W400(),
                    ),
                    const SizedBox(height: 18),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
