import 'package:kucc_app/models/model/project.models.dart';

class UserModel {
  String id;
  String name;
  bool isMember;
  String email;
  String password;
  List<String>? techStacks;
  List<ProjectModel>? projects;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.isMember,
    this.techStacks,
    this.projects,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      isMember: json['isMember'],
      techStacks: List<String>.from(json['techStacks']),
      projects: List<ProjectModel>.from(
          json['projects'].map((x) => ProjectModel.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['isMember'] = isMember;
    data['techStacks'] = techStacks;
    data['projects'] = projects;
    return data;
  }
}
