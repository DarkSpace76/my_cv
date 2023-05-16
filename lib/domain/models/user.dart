import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_resume/domain/models/education.dart';
import 'package:my_resume/domain/models/langauge.dart';
import 'package:my_resume/domain/models/professional_skillls.dart';
import 'package:my_resume/domain/models/project.dart';
import 'package:my_resume/domain/models/work_experiance.dart';
import 'package:my_resume/utils/convert.dart';

class User {
  String? userName;
  String? profession;
  DateTime? dob;
  String? adress;
  String? email;
  String? profileImage;
  String? phone;
  List<String>? interests;
  List<Langauge>? langauges;
  List<ProffesionalSkill>? professionalSkillls;
  List<WorkExperiance>? workExperiances;
  List<Education>? educations;
  List<Project>? projects;

  User(
      {this.userName,
      this.profession,
      this.dob,
      this.adress,
      this.email,
      this.profileImage,
      this.phone,
      this.interests,
      this.langauges,
      this.professionalSkillls,
      this.workExperiances,
      this.educations,
      this.projects});

  static User userFormJson(Map<String, dynamic> json) {
    return User(
        userName: json['user_name'] as String?,
        profession: json['profession'] as String?,
        dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
        adress: json['adress'] as String?,
        email: json['email'] as String?,
        profileImage: json['profile_image'] as String?,
        interests: mapToList(json['interests']),
        phone: json['phone'] as String?,
        langauges: Langauge.langaugeFromJsonToList(json['langauges']),
        professionalSkillls: ProffesionalSkill.proffesionalSkillFromJsonToList(
            json['proffesional_skills']),
        workExperiances: WorkExperiance.workExperianceFromJsontoList(
            json['work_experiances']),
        educations: Education.educationFromJsonToList(json['educations']),
        projects: Project.projectFromJsonToList(json['projects']));
  }
}
