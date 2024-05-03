import '../generated/assets.dart';

class ProjectUtils {
  final String image;
  final String title;
  final String subTitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subTitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectUtils> hobbyProjectsUtils = [
  ProjectUtils(
    image: Assets.projectsIcircles,
    title: "Icicles App",
    subTitle: "This is a hobby project.",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.icicles.icicles",
  ),
  ProjectUtils(
    image: Assets.projectsIcircles,
    title: "Icicles App",
    subTitle: "This is a hobby project.",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.icicles.icicles",
  ),
  ProjectUtils(
    image: Assets.projectsIcircles,
    title: "Icicles App",
    subTitle: "This is a hobby project.",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.icicles.icicles",
  ),
  ProjectUtils(
    image: Assets.projectsIcircles,
    title: "Icicles App",
    subTitle: "This is a hobby project.",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.icicles.icicles",
  ),
];
List<ProjectUtils> professionalProjectsUtils = [
  ProjectUtils(
    image: Assets.projectsIcircles,
    title: "Icicles App",
    subTitle: "This is a professional project.",
  ),
  ProjectUtils(
    image: Assets.projectsIcirclesQuiz,
    title: "Icicles App",
    subTitle: "This is a professional project.",
  ),
  ProjectUtils(
    image: Assets.projectsIcirclesCommunity,
    title: "Icicles App",
    subTitle: "This is a professional project.",
  ),
];
