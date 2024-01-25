import 'package:myportfolio/src/model/HardSkill.dart';

import '../services/HardSkillService.dart';

class HardSkillController {
     loadHardSkills() async {
       var service = HardSkillService();
       List<HardSkill> listHardSkills = await service.getHardSkill();
       return listHardSkills;
     }
}