// import 'dart:convert';
// import 'dart:developer';

// import 'package:get_storage/get_storage.dart';

// class StorageKeys {
//   // ignore: constant_identifier_names
//   static const String USER = "user";
// }

// class StorageHelper {
//   static User? getUser() {
//     try {
//       final box = GetStorage();
//       User user = User.fromJson(json.decode(box.read(StorageKeys.USER)));
//       return user;
//     } catch (e, s) {
//       log(e.toString());
//       log(s.toString());
//       return null;
//     }
//   }
// }
