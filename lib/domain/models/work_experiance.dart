import 'package:my_resume/domain/models/working_hour.dart';

class WorkExperiance {
  String? title;
  String? subtitle;
  WorkingHour? workingHours;
  String? description;

  WorkExperiance(
      {this.title, this.subtitle, this.workingHours, this.description});

  static WorkExperiance workExperianceFromJson(Map<String, dynamic> json) {
    return WorkExperiance(
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      workingHours: WorkingHour.workingHourFromJson(
          json['working_hours'] as Map<String, dynamic>?),
      description: json['description'] as String?,
    );
  }

  static List<WorkExperiance> workExperianceFromJsontoList(
      List<Map<String, dynamic>> json) {
    return json.map((e) => workExperianceFromJson(e)).toList();
  }
}
