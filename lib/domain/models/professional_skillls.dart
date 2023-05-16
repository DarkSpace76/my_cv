class ProffesionalSkill {
  String? title;
  int? level;

  ProffesionalSkill({this.title, this.level});

  static ProffesionalSkill proffesionalSkillFromJson(
      Map<String, dynamic> json) {
    return ProffesionalSkill(
        title: json['title'] as String?, level: json['level'] as int?);
  }

  static List<ProffesionalSkill> proffesionalSkillFromJsonToList(
      List<Map<String, dynamic>> json) {
    return json.map((e) => proffesionalSkillFromJson(e)).toList();
  }
}
