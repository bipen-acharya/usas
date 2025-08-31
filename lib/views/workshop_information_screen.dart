import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';
import 'package:usas/utils/image_path.dart';
import 'package:usas/views/workshop_detail_screen.dart';

class WorkshopInformationScreen extends StatelessWidget {
  const WorkshopInformationScreen({super.key});

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
          "Workshop Info",
          style: CustomTextStyles.f14W600(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
        child: InkWell(
          onTap: () {
            Get.to(() => WorkshopDetailScreen());
          },
          child: Container(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
            height: 135,
            width: double.infinity,
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
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Booked Date",
                //       style: CustomTextStyles.f12W400(color: AppColors.lGrey),
                //     ),
                //     Container(
                //       height: 18,
                //       width: 72,
                //       decoration: BoxDecoration(
                //         color: Colors.amber,
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //       child: Center(
                //         child: Text(
                //           "serviceStatus",
                //           style: CustomTextStyles.f10W400(
                //             color: AppColors.extraWhite,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    SvgPicture.asset(ImagePath.notice),
                    const SizedBox(width: 6),
                    Text(
                      'August 19, Wednesday 10-11 am',
                      style: CustomTextStyles.f12W400(),
                    ),
                  ],
                ),
                const Divider(thickness: 0.3, color: AppColors.lGrey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            ImagePath.logo1,
                            width: 45,
                            height: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vishal Birthday",
                              style: CustomTextStyles.f16W700(),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  ImagePath.notification,
                                  height: 12,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "UNISC Level 2",
                                  style: CustomTextStyles.f12W400(
                                    color: AppColors.lGrey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                Text(
                                  "Organized by",
                                  style: CustomTextStyles.f14W400(),
                                ),
                                Text(
                                  " Vishal",
                                  style: CustomTextStyles.f14W600(
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: AppColors.extraWhite,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.borderColor,
                                blurRadius: 2.0,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Center(
                            child: SvgPicture.asset(ImagePath.home),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => WorkshopInformationScreen());
                      },
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: AppColors.errorColor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.borderColor,
                              blurRadius: 2.0,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Center(child: SvgPicture.asset(ImagePath.home)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
