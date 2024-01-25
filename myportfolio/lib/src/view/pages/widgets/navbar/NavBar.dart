import 'package:flutter/material.dart';

import 'package:myportfolio/src/view/pages/widgets/navbar/NavBarLogo.dart';
import 'package:myportfolio/src/view/pages/widgets/navbar/NavBarRow.dart';
import 'package:myportfolio/src/view/pages/widgets/section/Section.dart';

import '../../../../core/AppColors.dart';
import '../../../../core/Globals.dart';
import '../../../../core/ScreenHelper.dart';

class Navbar extends StatelessWidget {
  final List<Section> sections;

  const Navbar({Key? key, required this.sections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tableOfContents = NavBarRow(
      sections: sections,
      onItemTap: (section) {
        final targetContext = section.key.currentContext;
        if (targetContext != null) {
          Scrollable.ensureVisible(
            targetContext,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        }
      },
    );
    return ScreenHelper(
      mobile: buildMobileNavBar(),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: buildDesktopNavBar(tableOfContents),
      ),
      tablet: buildMobileNavBar(),
    );
  }
}

Widget buildMobileNavBar() {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavBarLogo(),
          GestureDetector(
            onTap: () {
              Globals.scaffoldKey.currentState!.openEndDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black54,
              size: 28.0,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildDesktopNavBar(NavBarRow tableOfContents) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const NavBarLogo(),
        tableOfContents,
      ],
    );
}
