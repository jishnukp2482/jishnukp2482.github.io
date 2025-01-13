class ProjectsModal {
  final int id;
  final List<String> projectPhotos;
  final String projectName;
  final String subttileOverView;
  final String overView;
  final List<String> frontEndTechnologies;
  final List<String> backendTechnologiesUsed;
  final List<String> keyFetaures;

  ProjectsModal(
      {required this.id,
      required this.projectPhotos,
      required this.projectName,
      required this.subttileOverView,
      required this.overView,
      required this.frontEndTechnologies,
      required this.backendTechnologiesUsed,
      required this.keyFetaures});
}
