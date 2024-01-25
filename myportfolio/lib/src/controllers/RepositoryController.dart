import 'package:myportfolio/src/model/Reposiory.dart';
import 'package:myportfolio/src/services/RepositoryService.dart';


class RepositoryController {
  loadRepos() async {
    var service = RepositoryService();
    List<Repository> listRepos = await service.getRepos();
    return listRepos;
  }
}