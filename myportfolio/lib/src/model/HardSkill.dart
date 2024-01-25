import 'dart:convert';

class HardSkill {
  String nome;

  HardSkill({
     required this.nome,
  });

  factory HardSkill.fromJson(Map<String, dynamic> json) {
    HardSkill hardSkill = HardSkill(
        nome: json['Nome']);
    return hardSkill;
  }

}
