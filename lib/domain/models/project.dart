import 'package:my_resume/utils/convert.dart';

class Project {
  String? name;
  String? description;
  List<String>? stacks;
  List<String>? images;

  Project({this.name, this.description, this.stacks, this.images});

  static Project projectFromJson(Map<String, dynamic> json) {
    return Project(
        name: json['name'] as String?,
        description: json['description'] as String?,
        stacks: mapToList(json['stacks']),
        images: mapToList(json['images']));
  }

  static List<Project> projectFromJsonToList(List<Map<String, dynamic>> json) {
    return json.map((e) => projectFromJson(e)).toList();
  }
}
