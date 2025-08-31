import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/image_path.dart';
import 'package:usas/widgets/custom/elevated_button.dart';

import '../utils/custom_text_style.dart';

class WorkshopDetailScreen extends StatelessWidget {
  const WorkshopDetailScreen({super.key});

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
          "Details",
          style: CustomTextStyles.f14W600(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  imageUrl: "",
                  filterQuality: FilterQuality.high,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Image.asset(
                    ImagePath.logo1, // Replace with your asset path
                    height: MediaQuery.of(context).size.height / 2.7,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 14),
                child: Text("Workshop Name", style: CustomTextStyles.f18W700()),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
                child: Text(
                  "By: Ryan",
                  style: CustomTextStyles.f16W700(
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
                child: Text(
                  "Description kasdj jdkl ajsdkl ajsdkljas dkljaskd aks dkasjdkjas dkjakdj alkjdakjdklajdka kjadk akadjklasjdklasjdkas dkaj sdkljasdkj asdklas jklajs dkajsdkjasdkj aksdjak jaklsdj kasjdksajdijkfnkljsdiufgv ijfkakn kjdffioer ksd",
                  style: CustomTextStyles.f14W400(),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 15),
                child: Text(
                  "Time Table Information",
                  style: CustomTextStyles.f16W600(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 7),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      size: 20,
                      color: AppColors.lGrey,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Monday-Friday: 08:00 AM - 05:00 PM",
                          style: CustomTextStyles.f12W400(
                            color: AppColors.lGrey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Saturday: 09:00 AM - 07:00 PM",
                          style: CustomTextStyles.f12W400(
                            color: AppColors.lGrey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Sunday: 09:00 AM - 05:00 PM",
                          style: CustomTextStyles.f12W400(
                            color: AppColors.lGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 3),
                child: Row(
                  children: [
                    SvgPicture.asset(ImagePath.eye, height: 18, width: 14),
                    const SizedBox(width: 17),
                    Text(
                      "Location",
                      style: CustomTextStyles.f12W400(color: AppColors.lGrey),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, right: 18, top: 10),
                child: Divider(thickness: 0.5, color: AppColors.lGrey),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
                child: Text("Why to join", style: CustomTextStyles.f16W600()),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
                child: Text(
                  "If you are interested to join, please click the button below for more information or to proceed with the Join WOrkshop.",
                  style: CustomTextStyles.f14W400(),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(19.0),
        child: CustomElevatedButton(title: "Join Workshop", onTap: () {}),
      ),
    );
  }
}
