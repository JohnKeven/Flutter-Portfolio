class Repository {
  String repoName;
  String repoDescription;
  String repoImageUrl;
  String repoUrl;

  Repository({
    required this.repoName,
    required this.repoDescription,
    required this.repoImageUrl,
    required this.repoUrl,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    Repository repository = Repository(
        repoName: json['repoName'],
        repoDescription: json['repoDescription'],
        repoImageUrl: json['repoImage'],
        repoUrl: json['repoUrl']);
    return repository;
  }
}