import 'package:flutter/material.dart';
import 'package:myportfolio/src/controllers/ProjectController.dart';
import 'package:myportfolio/src/model/Project.dart';
import 'package:myportfolio/src/view/pages/widgets/projects/chewieListItem.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/core.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  ProjectController projectController = ProjectController();
  late List<Project> projectDados = [];

  _loadProjects() async {
    projectDados = await projectController.loadProjects();
    setState(() {
      projectDados = projectDados;
    });
  }

  @override
  void initState(){
    _loadProjects();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
        mobile: buildProjectsMobile(context, projectDados),
        desktop: buildProjectsDesktopTablet(context, projectDados),
        tablet: buildProjectsDesktopTablet(context, projectDados),
    );
  }
}

Widget buildProjectsDesktopTablet(context, projectDados){
  return Container(
    padding: const EdgeInsets.only(top: 12),
    color: AppColors().darkBackground,
    height: MediaQuery.of(context).size.height * .9,
    width: double.infinity,
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
                '../Projetos/Comercializados',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: AppColors().kSecondColor),
              ),
              const Divider(),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  reverse: false,
                  itemCount: projectDados.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      Container(
                        color: AppColors().brightBackground,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Card(
                                child: SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: ChewieListItem(
                                    videoPlayerController: VideoPlayerController.asset(
                                      projectDados[index].projectVideoUrl,
                                    ),
                                    looping: false,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(projectDados[index].projectName,textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 18, color: AppColors().kSecondColor, fontWeight: FontWeight.bold),),
                                  const Divider(color: Colors.transparent,),
                                  Text(projectDados[index].projectDescription,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 16, color: AppColors().kSecondColor),
                                  ),
                                  const Divider(color: Colors.transparent,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildProjectsMobile(context, projectDados){
  return Container(
    padding: const EdgeInsets.only(top: 12),
    color: AppColors().darkBackground,
    height: MediaQuery.of(context).size.height * .9,
    width: double.infinity,
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
                '../Projetos/Comercializados',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: AppColors().kSecondColor),
              ),
              const Divider(),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: projectDados.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      Container(
                        color: AppColors().brightBackground,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Card(
                                child: SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: ChewieListItem(
                                    videoPlayerController: VideoPlayerController.asset(
                                      projectDados[index].projectVideoUrl,
                                    ),
                                    looping: false,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12),
                              width: MediaQuery.of(context).size.width / 1.2,
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(projectDados[index].projectName,textAlign: TextAlign.justify,
                                      style: TextStyle(fontSize: 18, color: AppColors().kSecondColor, fontWeight: FontWeight.bold),),
                                    const Divider(color: Colors.transparent,),
                                    Text(projectDados[index].projectDescription,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(fontSize: 14, color: AppColors().kSecondColor),
                                    ),
                                    const Divider(color: Colors.transparent,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}