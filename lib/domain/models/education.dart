import 'package:my_resume/domain/models/working_hour.dart';

class Education {
  String? title;
  String? subtitle;
  WorkingHour? workingHour;
  String? description;

  Education({this.title, this.subtitle, this.workingHour, this.description});
}
