import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usas/views/home_screen.dart';
import 'package:usas/views/notification_screen.dart';
import 'package:usas/views/profile_screen.dart';

class DashScreenController extends GetxController{
  final dashKey = GlobalKey<ScaffoldState>();
  RxList<Widget> pages = RxList([
    HomeScreen(), 
    NotificationScreen(), 
    ProfileScreen()]);
  RxInt currentIndex = RxInt(0);

  void onItemTapped(int index) {
    currentIndex.value = index;
  }
}