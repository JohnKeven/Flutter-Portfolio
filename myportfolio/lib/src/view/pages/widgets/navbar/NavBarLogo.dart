import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        'John Keven.',
        style: TextStyle(
            color: AppColors().kSecondColor, fontSize: 15.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
      ),
    );
  }
}
