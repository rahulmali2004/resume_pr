import 'package:resume_pr/utils/icons.dart';

class Buildoption {
  final String icon;
  final String name;
  final String route;

  Buildoption({
    required this.icon,
    required this.name,
    required this.route,
  });
}

class Myroutes {
  static String homepage = "/";
  static String workspace = "workspace";

  static List<Buildoption> buildoption = [
    Buildoption(
      icon: myicons + "contact-books.png",
      name: "contact info",
      route: "contact info",
    ),
    Buildoption(
      icon: myicons + "briefcase.png",
      name: "carrier objective",
      route: "carrier_objective",
    ),
    Buildoption(
      icon: myicons + "user.png",
      name: "personal details",
      route: "personal_details",
    ),
    Buildoption(
      icon: myicons + "mortarboard.png",
      name: "Education",
      route: "Education",
    ),
    Buildoption(
      icon: myicons + "thinking.png",
      name: "Experience",
      route: "Experience",
    ),
    Buildoption(
      icon: myicons + "experience.png",
      name: "Technical Skills",
      route: "Technical_Skills",
    ),
    Buildoption(
      icon: myicons + "open-book.png",
      name: "Interest/Hobbies",
      route: "Interest/Hobbies",
    ),
    Buildoption(
      icon: myicons + "project.png",
      name: "Projects",
      route: "Projects",
    ),
    Buildoption(
      icon: myicons + "achievement.png",
      name: "Achievements",
      route: "Achievements",
    ),
    Buildoption(
      icon: myicons + "handshake.png",
      name: "References",
      route: "References",
    ),
    Buildoption(
      icon: myicons + "declaration.png",
      name: "Declaration",
      route: "Declaration",
    ),
  ];
}
