// import 'package:get/get.dart';
// import 'package:usas/controller/auth/login/login_controller.dart';
// import 'package:usas/controller/auth/register/register_controller.dart';
// import 'package:usas/controller/auth/register/register_phone_verification_controller.dart';
// import 'package:usas/views/auth/login/login_screen.dart';
// import 'package:usas/views/auth/register/register_screen.dart';
// import '../controller/auth/register/complete_profile_controller.dart';
// import '../controller/dashboard/dash_screen_controller.dart';
// import '../controller/dashboard/home_screen_controller.dart';
// import '../controller/dashboard/profile_screen_controller.dart';
// import '../controller/splash_controller.dart';
// import '../views/auth/register/complete_profile_screen.dart';
// import '../views/auth/register/phone_verification_screen.dart';
// import '../views/dash_screen.dart';
// import '../views/splash_screen.dart';

// var commonPages = [
//   GetPage(
//       name: SplashScreen.routeName,
//       page: (() => SplashScreen()),
//       binding:
//           BindingsBuilder(() => Get.lazyPut(() => SplashScreenController()))),
//   // GetPage(
//   //     name: LogInScreen.routeName,
//   //     page: (() => LogInScreen()),
//   //     binding: BindingsBuilder(() => Get.lazyPut(() => LogInController()))),
//   // GetPage(
//   //     name: RegisterScreen.routeName,
//   //     page: () {
//   //       return RegisterScreen();
//   //     },
//   //     binding: BindingsBuilder(() => Get.lazyPut(() => RegisterController()))),
//   GetPage(
//       name: DashScreen.routeName,
//       page: (() => DashScreen()),
//       binding: BindingsBuilder(
//         () {
//           // Get.lazyPut(() => DashScreenController());
//           // Get.lazyPut(() => HomeScreenController());
//           // Get.lazyPut(() => ProfileScreenController());
//         },
//       )),
//   // GetPage(
//   //   name: RegisterPhoneVerificationScreen.routeName,
//   //   page: () {
//   //     var data = Get.arguments;
//   //     var phoneNumber = data[0];
//   //     return RegisterPhoneVerificationScreen(
//   //       phoneNumber: phoneNumber,
//   //     );
//   //   },
//   //   binding: BindingsBuilder(
//   //     () => Get.lazyPut(
//   //       () => RegisterPhoneVerficationController(),
//   //     ),
//   //   ),
//   // ),
//   // GetPage(
//   //   name: CompleteProfileScreen.routeName,
//   //   page: () => CompleteProfileScreen(),
//   //   binding: BindingsBuilder(() => Get.lazyPut(
//   //         () => CompleteProfileController(),
//   //       )),
//   // ),
// ];
