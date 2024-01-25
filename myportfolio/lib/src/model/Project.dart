class Project {
  String projectName;
  String projectDescription;
  String projectVideoUrl;

  Project({
    required this.projectName,
    required this.projectDescription,
    required this.projectVideoUrl,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    Project project = Project(
        projectName: json['projectName'],
        projectDescription: json['projectDescription'],
        projectVideoUrl: json['projectVideoUrl']);
    return project;
  }
}