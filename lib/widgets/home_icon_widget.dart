import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';

class HomeIconTextWidget extends StatelessWidget {
  const HomeIconTextWidget({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });
  final String text;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 130,
        width: Get.width / 2,
        decoration: const BoxDecoration(
          color: AppColors.extraWhite,
          border: Border(
            top: BorderSide(width: 0.5, color: AppColors.unselectedGrey),
            bottom: BorderSide(width: 0.5, color: AppColors.unselectedGrey),
            right: BorderSide(width: 0.5, color: AppColors.unselectedGrey),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30, width: 30, child: SvgPicture.asset(image)),
            const SizedBox(height: 5),
            Text(text, style: CustomTextStyles.f18W400()),
          ],
        ),
      ),
    );
  }
}
