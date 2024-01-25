import 'package:flutter/material.dart';
import 'package:myportfolio/src/view/pages/widgets/hardskills/HardSkills.dart';

import '../../core/AppColors.dart';
import '../../core/Globals.dart';
import 'package:myportfolio/src/view/pages/widgets/navbar/NavBar.dart';
import 'package:myportfolio/src/view/pages/widgets/navbar/NavBarLink.dart';
import 'package:myportfolio/src/view/pages/widgets/section/Section.dart';
import 'package:myportfolio/src/view/pages/widgets/section/SectionWidget.dart';
import 'package:myportfolio/src/view/pages/widgets/projects/Projects.dart';
import 'package:myportfolio/src/view/pages/widgets/presentation/Presentation.dart';
import 'package:myportfolio/src/view/pages/widgets/repositories/Repositories.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Section> sections = [
    Section(GlobalKey(), 'Home', const Presentation()),
    Section(GlobalKey(), 'Hard Skills', const HardSkills()),
    Section(GlobalKey(), 'Projetos', const Projects()),
    Section(GlobalKey(), 'Repositórios', const Repositories()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: AppColors().darkBackground.withOpacity(0.8),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 14.0,
              right: 14.0,
              top: 60.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return NavBarItemLink(
                    section: sections[index],
                    onTap: (section) {
                      final targetContext = section.key.currentContext;
                      if (targetContext != null) {
                        Scrollable.ensureVisible(
                          targetContext,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                      Navigator.pop(context);
                    });
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1,
                  color: Colors.grey,
                );
              },
              itemCount: sections.length,
            ),
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
            boxShadow: const <BoxShadow>[BoxShadow(color: Colors.black54, blurRadius: 8.0, offset: Offset(0.0, 0.75))],
            color: AppColors().brightBackground,
          ),
          child: Navbar(
            sections: sections,
          ),
        ),
      ),
      body: Container(
        color: AppColors().darkBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: sections.length,
                itemBuilder: (BuildContext context, int index) {
                  final section = sections[index];
                  return SectionWidget(
                    key: section.key,
                    section: section,
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      'Desenvolvido por John. - johnkeven.ti@gmail.com',
                      style: TextStyle(color: AppColors().kSecondColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
