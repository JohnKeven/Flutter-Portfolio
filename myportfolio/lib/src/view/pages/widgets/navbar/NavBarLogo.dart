import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 15,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            'John Keven.',
            style: TextStyle(
                color: AppColors().kSecondColor, fontSize: 15.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
