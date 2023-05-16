import 'package:my_resume/domain/models/working_hour.dart';

class Education {
  String? title;
  String? subtitle;
  WorkingHour? workingHour;
  String? description;

  Education({this.title, this.subtitle, this.workingHour, this.description});

  static Education educationFromJson(Map<String, dynamic> json) {
    return Education(
        title: json['title'] as String?,
        subtitle: json['subtitle'] as String?,
        workingHour: WorkingHour.workingHourFromJson(
            json['working_hours'] as Map<String, dynamic>?),
        description: json['description'] as String?);
  }

  static List<Education> educationFromJsonToList(
      List<Map<String, dynamic>> json) {
    return json.map((e) => educationFromJson(e)).toList();
  }
}
