class Langauge {
  String? title;
  int? level;

  Langauge({this.title, this.level});

  static Langauge langaugeFromJson(Map<String, dynamic> json) {
    return Langauge(
        title: json['title'] as String?, level: json['level'] as int?);
  }

  static List<Langauge> langaugeFromJsonToList(
      List<Map<String, dynamic>> json) {
    return json.map((e) => langaugeFromJson(e)).toList();
  }
}
