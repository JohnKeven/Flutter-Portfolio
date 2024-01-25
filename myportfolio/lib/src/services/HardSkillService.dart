import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myportfolio/src/model/HardSkill.dart';

class HardSkillService {

  Future<List<HardSkill>> getHardSkill() async {
    final response = await rootBundle.loadString('lib/src/core/database/hardskill.json');
    Map<String, dynamic> dadosJson = json.decode(response);

    List<HardSkill> hardSkills = dadosJson['skills'].map<HardSkill>((map) {
      return HardSkill.fromJson(map);
    }).toList();
    return hardSkills;
  }

}
