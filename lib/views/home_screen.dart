import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';
import 'package:usas/utils/image_path.dart';
import 'package:usas/views/complaint_screen.dart';
import 'package:usas/views/teacher_screen.dart';
import 'package:usas/views/workshop_information_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(14),
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 28, 123, 205),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,s
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14, top: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ECA Event",
                            style: CustomTextStyles.f24W700(
                              color: AppColors.extraWhite,
                            ),
                          ),
                          const SizedBox(height: 2),
                          SizedBox(
                            width: 165,
                            child: Text(
                              "Aug 31 Anti Immigiration Victoria Square Sunishie Coast Adeliade Level 1",
                              style: CustomTextStyles.f12W400(
                                color: AppColors.extraWhite,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              // Get.to(() => AppointmentBookingScreen());
                            },
                            child: Container(
                              width: 100,
                              height: 28,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  "View Now",
                                  style: CustomTextStyles.f12W400(
                                    color: AppColors.extraWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(ImagePath.logo1, height: 135),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("General Info", style: CustomTextStyles.f16W600()),
              ),
              Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines

                children: [
                  HomeScreenCard(
                    label: 'Teacher Details',
                    imagelabel: ImagePath.teacher,
                    ontap: () {
                      Get.to(() => TeacherDetailsScreen());
                    },
                  ),
                  HomeScreenCard(
                    label: 'Workshop Info',
                    imagelabel: ImagePath.complaint,
                    ontap: () {
                      Get.to(() => WorkshopInformationScreen());
                    },
                  ),
                  HomeScreenCard(
                    label: 'Complaint Form',
                    imagelabel: ImagePath.complaint,
                    ontap: () {
                      Get.to(() => ComplaintFormScreen());
                    },
                  ),
                  HomeScreenCard(
                    label: 'Online Library',
                    imagelabel: ImagePath.library,
                    ontap: () {},
                  ),
                ],
              ),

              // Container(
              //   margin: const EdgeInsets.all(14),
              //   height: 160,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: const Color.fromARGB(255, 28, 123, 205),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     // crossAxisAlignment: CrossAxisAlignment.start,s
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(left: 14, top: 18),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Join UNISC Student Association",
              //               style: CustomTextStyles.f18W700(
              //                 color: AppColors.extraWhite,
              //               ),
              //             ),
              //             const SizedBox(height: 2),
              //             SizedBox(
              //               width: Get.width / 1.2,
              //               child: Text(
              //                 "Unlock exclusive features like club events, job vacancies, and more!",
              //                 style: CustomTextStyles.f12W400(
              //                   color: AppColors.extraWhite,
              //                 ),
              //               ),
              //             ),
              //             const SizedBox(height: 10),
              //             InkWell(
              //               onTap: () {
              //                 Get.to(() => JoinNowClubScreen());
              //               },
              //               child: Container(
              //                 width: 100,
              //                 height: 28,
              //                 decoration: BoxDecoration(
              //                   color: const Color.fromARGB(153, 7, 102, 161),
              //                   borderRadius: BorderRadius.circular(100),
              //                 ),
              //                 child: Center(
              //                   child: Text(
              //                     "Join Now",
              //                     style: CustomTextStyles.f12W400(
              //                       color: AppColors.extraWhite,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "UNISC CLUB Info",
                  style: CustomTextStyles.f16W600(),
                ),
              ),
              Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines

                children: [
                  ClubScreenCard(
                    label: 'Club Meeting Notices',
                    imagelabel: ImagePath.notice,
                  ),
                  ClubScreenCard(
                    label: 'Club Events',
                    imagelabel: ImagePath.complaint,
                  ),
                  ClubScreenCard(
                    label: 'Job Vacancies',
                    imagelabel: ImagePath.notice,
                  ),
                  ClubScreenCard(
                    label: 'Club Workshops',
                    imagelabel: ImagePath.complaint,
                  ),
                  ClubScreenCard(
                    label: 'Plan or Request Event',
                    imagelabel: ImagePath.notification,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          // Get.to(const ChatBotScreen());
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(child: SvgPicture.asset(ImagePath.message)),
        ),
      ),
    );
  }
}

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({
    super.key,
    required this.label,
    required this.imagelabel,
    required this.ontap,
  });

  final String label;
  final VoidCallback ontap;
  final String imagelabel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 105,
        width: Get.width / 2.32,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: SvgPicture.asset(
                imagelabel, // Static image for each service
                height: 35,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 9),
            Text(label, style: CustomTextStyles.f12W400()),
          ],
        ),
      ),
    );
  }
}

class ClubScreenCard extends StatelessWidget {
  const ClubScreenCard({
    super.key,
    required this.label,
    required this.imagelabel,
  });

  final String label;
  final String imagelabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 105,
      width: Get.width / 2.32,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: SvgPicture.asset(
              imagelabel, // Static image for each service
              height: 35,
              color: Colors.green,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 9),
          Text(label, style: CustomTextStyles.f12W400()),
        ],
      ),
    );
  }
}
