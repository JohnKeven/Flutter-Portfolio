import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myportfolio/src/model/Reposiory.dart';

class RepositoryService {

  Future<List<Repository>> getRepos() async {
    final response = await rootBundle.loadString('lib/src/core/database/repositories.json');
    Map<String, dynamic> dadosJson = json.decode(response);

    List<Repository> repository = dadosJson['repos'].map<Repository>((map) {
      return Repository.fromJson(map);
    }).toList();
    return repository;
  }

}