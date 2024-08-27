// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectModel {
  String name;
  String description;
  String url;
  String userId;
  List<String> images;
  ProjectModel({
    required this.name,
    required this.description,
    required this.url,
    required this.images,
    required this.userId,
  });
  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      name: json['name'],
      description: json['description'],
      url: json['url'],
      userId: json['userId'],
      images: List<String>.from(json['images']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['url'] = this.url;
    data['userId'] = this.userId;
    data['images'] = this.images;
    return data;
  }
}
