import 'dart:convert';

import 'package:flutter/services.dart';
import '../model/Project.dart';

class ProjectService {

  Future<List<Project>> getProjects() async {
    final response = await rootBundle.loadString('lib/src/core/database/projects.json');
    Map<String, dynamic> dadosJson = json.decode(response);

    List<Project> projects = dadosJson['projects'].map<Project>((map) {
      return Project.fromJson(map);
    }).toList();
    return projects;
  }

}
