import 'package:flutter/material.dart';
import 'package:myportfolio/src/view/pages/widgets/section/Section.dart';

class SectionWidget extends StatelessWidget {
  final Section section;

  const SectionWidget({Key? key, required this.section}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: section.widget,
    );
  }
}
