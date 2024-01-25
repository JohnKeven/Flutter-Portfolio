import 'package:myportfolio/src/model/Project.dart';
import 'package:myportfolio/src/services/ProjectService.dart';


class ProjectController {
  loadProjects() async {
    var service = ProjectService();
    List<Project> listProjects = await service.getProjects();
    return listProjects;
  }
}