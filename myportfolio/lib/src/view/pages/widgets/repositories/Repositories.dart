import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/src/core/AppColors.dart';
import 'package:myportfolio/src/model/Reposiory.dart';
import 'dart:html' as html;
import '../../../../controllers/RepositoryController.dart';

class Repositories extends StatefulWidget {
  const Repositories({Key? key}) : super(key: key);

  @override
  State<Repositories> createState() => _RepositoriesState();
}

class _RepositoriesState extends State<Repositories> {
  RepositoryController repositoryController = RepositoryController();
  late List<Repository> repositoryDados = [];

  _loadRepositories() async {
    repositoryDados = await repositoryController.loadRepos();
    setState(() {
      repositoryDados = repositoryDados;
    });
  }

  @override
  void initState() {
    _loadRepositories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      color: AppColors().darkBackground,
      padding: const EdgeInsets.all(18),
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
                  '../Projetos/Estudos',
                  style: TextStyle(fontSize: 18, color: AppColors().kSecondColor, fontStyle: FontStyle.italic),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 260,
                      viewportFraction: deviceSize.width > 980 ? 0.2 : (deviceSize.width > 755 ? 0.3 : 0.8),
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                    ),
                    items: repositoryDados.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Card(
                            color: AppColors().brightBackground,
                            child: SizedBox(
                              width: 300,
                              height: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: SizedBox(
                                          height: 140,
                                          width: 200,
                                          child: Image.asset(
                                            i.repoImageUrl,
                                            fit: BoxFit.fill,
                                          )),
                                    ),
                                    onTap: () {
                                      html.window.open(i.repoUrl, 'repo');
                                    },
                                  ),
                                  GestureDetector(
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Text(
                                        i.repoName,
                                        style: TextStyle(color: AppColors().kSecondColor, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onTap: () {
                                      html.window.open(i.repoUrl, 'repo');
                                    },
                                  ),
                                  Text(
                                    i.repoDescription,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors().kSecondColor),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
