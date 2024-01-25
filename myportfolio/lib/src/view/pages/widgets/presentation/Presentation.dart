import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;
import '../../../../core/core.dart';

class Presentation extends StatefulWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      mobile: buildPresentationMobile(context),
      desktop: buildPresentationDestkopTablet(context),
      tablet: buildPresentationDestkopTablet(context),
    );
  }
}

Widget buildPresentationDestkopTablet(context) {
  return Container(
    color: AppColors().brightBackground,
    height: MediaQuery.of(context).size.height * .5,
    width: double.infinity,
    child: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Stack Developer | Mobile Engineer',
                  style: TextStyle(fontSize: 26, color: AppColors().kSecondColor),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                Text(
                    'Bacharel em Sistemas de Informação e pós graduado em desenvolvimento de aplicativos venho atuando como programador há mais de 4 anos, desenvolvi softwares utilizando diversas tecnologias. Acredito fortemente que sou capaz de me adaptar para trabalhar em diferentes ambientes usando tecnologias diferentes quando necessário. Eu prefiro algumas tecnologias acima de outras, mas não tenho medo de ter que desenvolver usando um novo framework ou biblioteca',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, color: AppColors().kSecondColor)),
                //const Divider(color: Colors.white,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 6),
                      child: GestureDetector(
                        onTap: () {
                          html.window.open('https://github.com/JohnKeven', 'github');
                        },
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 6),
                      child: GestureDetector(
                        onTap: () {
                          html.window.open('https://www.linkedin.com/in/johnkeven/', 'linkedin');
                        },
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 26),
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('lib/images/perfil.jpeg'),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildPresentationMobile(context) {
  return Container(
    color: AppColors().brightBackground,
    height: MediaQuery.of(context).size.height * .6,
    width: double.infinity,
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 12),
            width: MediaQuery.of(context).size.width / 1.2,
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('lib/images/perfil.jpeg'),
                  ),
                ),
                Text(
                  'Full Stack Developer | Mobile Engineer',
                  style: TextStyle(fontSize: 18, color: AppColors().kSecondColor),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                Text(
                    'Bacharel em Sistemas de Informação e pós graduado em desenvolvimento de aplicativos venho atuando como programador há mais de 4 anos, desenvolvi softwares utilizando diversas tecnologias. Acredito fortemente que sou capaz de me adaptar para trabalhar em diferentes ambientes usando tecnologias diferentes quando necessário. Eu prefiro algumas tecnologias acima de outras, mas não tenho medo de ter que desenvolver usando um novo framework ou biblioteca',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: AppColors().kSecondColor)),
                //const Divider(color: Colors.white,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 6),
                      child: GestureDetector(
                        onTap: () {},
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 6),
                      child: GestureDetector(
                        onTap: () {},
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 6),
                      child: GestureDetector(
                        onTap: () {},
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: FaIcon(
                            FontAwesomeIcons.envelope,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
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
