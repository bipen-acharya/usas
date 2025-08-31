import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';

import '../controller/splash_controller.dart';
import '../utils/image_path.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash-screen';

  SplashScreen({super.key});

  final c = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: Get.width / 2,
              child: SvgPicture.asset(ImagePath.logo, width: Get.width / 2),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: CupertinoActivityIndicator(
              radius: 15,
              color: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
