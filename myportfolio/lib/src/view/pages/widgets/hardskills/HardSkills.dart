import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HardSkills extends StatefulWidget {
  const HardSkills({Key? key}) : super(key: key);

  @override
  State<HardSkills> createState() => _HardSkillsState();
}

class _HardSkillsState extends State<HardSkills> {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      mobile: buildHardSkillsMobile(context),
      desktop: buildHardSkillsDesktopTablet(context),
      tablet: buildHardSkillsDesktopTablet(context),
    );
  }
}

Widget buildHardSkillsDesktopTablet(context) {
  return Container(
    padding: const EdgeInsets.only(top: 12),
    color: AppColors().darkBackground,
    height: MediaQuery.of(context).size.height * .32,
    width: double.infinity,
    child: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '../Tecnologias',
                  style: TextStyle(fontSize: 18, color: AppColors().kSecondColor),
                ),
                const Divider(),
                Wrap(
                  children: [
                    Card(
                      color: AppColors().brightBackground,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors().brightBackground)),
                          alignment: Alignment.center,
                          height: 60,
                          width: 160,
                          child: Text(
                            'Spring Framework',
                            style: TextStyle(color: AppColors().kSecondColor),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Card(
                      color: AppColors().brightBackground,
                      child: Container(
                          decoration: BoxDecoration(
                              color: AppColors().brightBackground,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors().brightBackground)),
                          alignment: Alignment.center,
                          height: 60,
                          width: 160,
                          child: Text(
                            'SQL Server',
                            style: TextStyle(color: AppColors().kSecondColor),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Card(
                      color: AppColors().brightBackground,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors().brightBackground)),
                          alignment: Alignment.center,
                          height: 60,
                          width: 160,
                          child: Text(
                            'Flutter',
                            style: TextStyle(color: AppColors().kSecondColor),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Card(
                      color: AppColors().brightBackground,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors().brightBackground)),
                          alignment: Alignment.center,
                          height: 60,
                          width: 160,
                          child: Text(
                            'Firebase',
                            style: TextStyle(color: AppColors().kSecondColor),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Card(
                      color: AppColors().brightBackground,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors().brightBackground)),
                          alignment: Alignment.center,
                          height: 60,
                          width: 160,
                          child: Text(
                            'Node.js',
                            style: TextStyle(color: AppColors().kSecondColor),
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildHardSkillsMobile(context) {
  return Container(
    padding: const EdgeInsets.only(top: 12),
    color: AppColors().darkBackground,
    height: MediaQuery.of(context).size.height * .6,
    width: double.infinity,
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '../Tecnologias',
                  style: TextStyle(fontSize: 18, color: AppColors().kSecondColor),
                ),
                const Divider(),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Card(
                        color: AppColors().darkBackground,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors().brightBackground)),
                            alignment: Alignment.center,
                            height: 60,
                            width: 160,
                            child: Text(
                              'Spring Framework',
                              style: TextStyle(color: AppColors().kSecondColor),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      Card(
                        color: AppColors().darkBackground,
                        child: Container(
                            decoration: BoxDecoration(
                                color: AppColors().darkBackground,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors().brightBackground)),
                            alignment: Alignment.center,
                            height: 60,
                            width: 160,
                            child: Text(
                              'SQL Server',
                              style: TextStyle(color: AppColors().kSecondColor),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      Card(
                        color: AppColors().darkBackground,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors().brightBackground)),
                            alignment: Alignment.center,
                            height: 60,
                            width: 160,
                            child: Text(
                              'Flutter',
                              style: TextStyle(color: AppColors().kSecondColor),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      Card(
                        color: AppColors().darkBackground,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors().brightBackground)),
                            alignment: Alignment.center,
                            height: 60,
                            width: 160,
                            child: Text(
                              'Firebase',
                              style: TextStyle(color: AppColors().kSecondColor),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      Card(
                        color: AppColors().darkBackground,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors().brightBackground)),
                            alignment: Alignment.center,
                            height: 60,
                            width: 160,
                            child: Text(
                              'Node.js',
                              style: TextStyle(color: AppColors().kSecondColor),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
