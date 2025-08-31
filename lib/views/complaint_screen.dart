import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';
import 'package:usas/utils/image_path.dart';
import 'package:usas/widgets/custom/custom_textfield.dart';

class ComplaintFormScreen extends StatelessWidget {
  const ComplaintFormScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomTextField(
                hint: "Title",
                // preIconPath: Icons.email,
                // preIconSize: 14,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hint: "Title",
                // preIconPath: Icons.email,
                // preIconSize: 14,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  padding: const EdgeInsets.all(8),
                  color: AppColors.secondaryTextColor,
                  strokeWidth: 1,
                  dashPattern: [10, 5],
                  radius: Radius.circular(10),
                ),
                child: SizedBox(
                  height: 69,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImagePath.upload),
                        const SizedBox(height: 5),
                        Text("Add Files"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
