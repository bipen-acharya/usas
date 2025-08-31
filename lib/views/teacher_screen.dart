import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/image_path.dart';

import '../utils/custom_text_style.dart';

class TeacherDetailsScreen extends StatelessWidget {
  const TeacherDetailsScreen({super.key});

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
          "Teacher",
          style: CustomTextStyles.f14W600(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19, right: 19, top: 20),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 120,
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3,
                    bottom: 3,
                    left: 15,
                    right: 20,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: "",
                      height: 87,
                      width: 94,
                      errorWidget: (context, url, error) => Image.asset(
                        ImagePath.logo1,
                        height: 87,
                        width: 94,
                        fit: BoxFit.fill,
                      ),
                      // height: 87,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Text("Name", style: CustomTextStyles.f14W600()),
                      const SizedBox(height: 6),
                      Text(
                        "content",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.f14W600(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Padding(
      //   padding: EdgeInsets.only(right: 19, left: 19, bottom: 19),
      //   child: Container(
      //     height: 130,
      //     padding: const EdgeInsets.only(
      //       left: 19,
      //       right: 24,
      //       top: 0,
      //       bottom: 10,
      //     ),

      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //       color: AppColors.extraWhite,

      //       boxShadow: [
      //         BoxShadow(
      //           offset: const Offset(4, 4),
      //           blurRadius: 9,
      //           color: AppColors.shadowColor,
      //         ),
      //       ],
      //     ),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const SizedBox(height: 17),
      //         Row(
      //           children: [
      //             Column(
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(50),
      //                   child: CachedNetworkImage(
      //                     fit: BoxFit.fill,
      //                     height: 41,
      //                     width: 41,
      //                     imageUrl: "",
      //                     errorWidget: (context, url, error) => Image.asset(
      //                       ImagePath.logo1,
      //                       height: 41,
      //                       width: 41,
      //                       fit: BoxFit.contain,
      //                     ),
      //                   ),
      //                 ),
      //                 const SizedBox(height: 3),
      //               ],
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(left: 16),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   const SizedBox(height: 9),
      //                   Text("sdasd"),
      //                   const SizedBox(height: 15),
      //                   Container(
      //                     width: MediaQuery.of(context).size.width / 1.6,
      //                     height: 1,
      //                     color: AppColors.shimmerHighlight,
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //         Wrap(
      //           spacing: 8.0, // gap between adjacent chips
      //           runSpacing: 4.0, // gap between lines
      //           children: [
      //             Padding(
      //               padding: EdgeInsets.only(right: 12, top: 12),
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(50),
      //                   color: AppColors.hintTextColor,
      //                   boxShadow: [
      //                     BoxShadow(
      //                       offset: const Offset(4, 4),
      //                       blurRadius: 9,
      //                       color: const Color(0xFF494949).withOpacity(0.06),
      //                     ),
      //                   ],
      //                 ),
      //                 child: Padding(
      //                   padding: const EdgeInsets.symmetric(
      //                     horizontal: 12,
      //                     vertical: 9,
      //                   ),
      //                   child: Text("sdsfsdf"),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
