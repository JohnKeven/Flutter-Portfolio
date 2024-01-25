import 'package:flutter/material.dart';

class NavBarItem {
  final String title;
  final VoidCallback onTap;
  final bool isButton;

  NavBarItem({
    required this.title,
    required this.onTap,
    this.isButton = false,
  });
}