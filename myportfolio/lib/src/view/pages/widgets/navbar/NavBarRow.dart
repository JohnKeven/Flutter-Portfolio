import 'package:flutter/material.dart';
import 'package:myportfolio/src/view/pages/widgets/navbar/NavBarLink.dart';
import 'package:myportfolio/src/view/pages/widgets/section/Section.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_value.dart';

class NavBarRow extends StatelessWidget {
  final List<Section> sections;
  final void Function(Section) onItemTap;

  const NavBarRow({
    Key? key,
    this.sections = const <Section>[],
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleConditions: [
        Condition.largerThan(name: MOBILE, value: ResponsiveBreakpoints.of(context).largerThan(MOBILE))
      ],
      child: Row(
        children: sections
            .map(
              (item) => NavBarItemLink(
                section: item,
                onTap: onItemTap,
              ),
            )
            .toList(),
      ),
    );
  }
}
