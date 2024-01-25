import 'package:flutter/material.dart';

class Section {
  final GlobalKey key;
  final String title;
  final Widget widget;

  const Section(this.key, this.title, this.widget);
}