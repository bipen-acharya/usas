import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usas/utils/colors.dart';
import 'package:usas/utils/custom_text_style.dart';
import 'package:usas/utils/image_path.dart';

class ProfileScreen extends StatelessWidget {
  // final coreController = Get.put(CoreController());
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraWhite,

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    fit: BoxFit.contain,
                    imageUrl:
                        "https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg",
                    height: 87,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Image.network(
                      "https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg",
                      height: 87,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("asdasdasd", style: CustomTextStyles.f14W400()),
            ),
            Text("hello123", style: CustomTextStyles.f14W400()),

            //profile menu
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
                child: Column(
                  children: [
                    // Obx(() {
                    //   return CustomProfileMenu(
                    //     label: "Dark Mode",
                    //     iocnData: StudentProfileIcon.moon,
                    //     trailing: SizedBox(
                    //       width: 55,
                    //       height: 30,
                    //       child: FlutterSwitch(
                    //         width: 50,
                    //         value: coreController.darkTheme.value,
                    //         onToggle: (value) {
                    //           coreController.darkTheme.value =
                    //               !coreController.darkTheme.value;
                    //           coreController.update();
                    //         },
                    //       ),
                    //     ),
                    //   );
                    // }),
                    // CustomProfileMenu(
                    //   iocnData: StudentProfileIcon.language,
                    //   label: "Language",
                    //   trailing: TextButton(
                    //     onPressed:     (){},
                    //     child: Row(
                    //       mainAxisSize: MainAxisSize.min,
                    //       children: const [
                    //         Text("English  "),
                    //         Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    CustomProfileMenu(
                      onTap: () {},
                      iocnData: ImagePath.library,
                      label: "Change Password",
                    ),
                    CustomProfileMenu(
                      onTap: () {},
                      iocnData: ImagePath.add,
                      label: "Help Centre",
                    ),
                    CustomProfileMenu(
                      onTap: () {},
                      iocnData: ImagePath.complaint,
                      label: "Rate our app",
                    ),
                    CustomProfileMenu(
                      onTap: () {},
                      iocnData: ImagePath.home,
                      label: "Settings",
                    ),
                    CustomProfileMenu(
                      onTap: () {},
                      iocnData: ImagePath.add,
                      label: "Logout",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomProfileMenu extends StatelessWidget {
  final String label;
  final String iocnData;
  final VoidCallback? onTap;
  final Widget? trailing;
  const CustomProfileMenu({
    super.key,
    this.trailing,
    this.onTap,
    required this.iocnData,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      minVerticalPadding: 1.0,
      contentPadding: const EdgeInsets.symmetric(vertical: 0),
      dense: true,
      onTap: onTap,
      leading: Padding(
        padding: const EdgeInsets.only(right: 0, left: 17),
        child: SvgPicture.asset(iocnData, height: 20, width: 20),
      ),
      title: Text(
        label,
        style: theme.textTheme.bodyLarge!.copyWith(fontSize: 15),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: trailing,
      ),
    );
  }
}
