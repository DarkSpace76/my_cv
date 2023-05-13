import 'package:my_resume/domain/models/education.dart';
import 'package:my_resume/domain/models/langauge.dart';
import 'package:my_resume/domain/models/professional_skillls.dart';
import 'package:my_resume/domain/models/project.dart';
import 'package:my_resume/domain/models/work_experiance.dart';

class User {
  String? userName;
  String? profession;
  DateTime? dob;
  String? adress;
  String? email;
  String? profileImage;
  String? phone;
  List<Langauge>? langauges;
  List<ProffesionalSkill>? professionalSkillls;
  List<WorkExperiance>? workExperiances;
  List<Education>? educations;
  List<Project>? projects;
}
