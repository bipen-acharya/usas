import 'package:flutter/material.dart';

class IconModel {
  IconModel({
    required this.label,
    required this.iocnPath,
    required this.onTap,
  });
  String label;
  String iocnPath;
  VoidCallback ?onTap;
}
