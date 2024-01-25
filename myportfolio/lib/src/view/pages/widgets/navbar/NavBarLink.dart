import 'package:flutter/material.dart';
import 'package:myportfolio/src/view/pages/widgets/section/Section.dart';

import '../../../../core/AppColors.dart';

class NavBarItemLink extends StatelessWidget {
  final Section section;
  final void Function(Section) onTap;

  const NavBarItemLink({Key? key, required this.section, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(section),
      hoverColor: AppColors().brightBackground.withOpacity(0.3),
      splashColor: AppColors().darkBackground,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Text(
          section.title,
          style: TextStyle(
            color: AppColors().kSecondColor,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
