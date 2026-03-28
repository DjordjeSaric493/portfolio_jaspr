import 'package:jaspr/jaspr.dart';

class AppModel {
  final String title;
  final String iconClass;
  final String colorHex;
  final String? route;
  final String? link;

  const AppModel({
    required this.title,
    required this.iconClass,
    required this.colorHex,
    this.route,
    this.link,
  });
}

class EduModel {
  final String title;
  final String school;
  final String startDate;
  final String endDate;
  final List<String> descriptionHtml;
  final String location;
  final String colorHex;

  const EduModel({
    required this.title,
    required this.school,
    required this.startDate,
    required this.endDate,
    required this.descriptionHtml,
    required this.location,
    required this.colorHex,
  });
}

class ExperienceModel {
  final String title;
  final String company;
  final String startDate;
  final String endDate;
  final List<String> bulletPointsHtml;
  final String location;
  final String colorHex;
  final String? link;

  const ExperienceModel({
    required this.title,
    required this.company,
    required this.startDate,
    required this.endDate,
    required this.bulletPointsHtml,
    required this.location,
    required this.colorHex,
    this.link,
  });
}

class SkillsModel {
  final String skillName;
  final String iconClass;
  final String colorHex;
  final String? imagePath;

  const SkillsModel({
    required this.skillName,
    required this.iconClass,
    required this.colorHex,
    this.imagePath,
  });
}

class CompetitionModel {
  final String title;
  final String organization;
  final String date;
  final List<String> bulletPointsHtml;
  final String location;
  final String colorHex;

  const CompetitionModel({
    required this.title,
    required this.organization,
    required this.date,
    required this.bulletPointsHtml,
    required this.location,
    required this.colorHex,
  });
}

class BgModel {
  final String color;
  final String gradient;
  final String svgPath;

  const BgModel({
    required this.color,
    required this.gradient,
    required this.svgPath,
  });
}

class EmuDevice {
  final String name;
  final String iconClass;
  final int width;
  final int height;
  final String type; // 'phone', 'tablet'

  const EmuDevice({
    required this.name,
    required this.iconClass,
    required this.width,
    required this.height,
    required this.type,
  });
}

const String name = "Djordje S.";
const String domain = "Mobile Developer";
const String linkedin = "https://www.linkedin.com/in/djordjesaric493/";
const String githublink = "https://github.com/DjordjeSaric493";
const String instagram = "https://www.instagram.com/djordjesaric6.jpg/";
const String email = 'djordjesaric1999@gmail.com';
const String introTextHtml =
    '''Welcome to my portfolio web app! <br> I am a Mobile developer with backend exposure and a computer science student.<br>My interests are cross-platform development (Flutter,Android - Jetpack Compose, KotlinMultiplatform).<br>
    I can build, fix, maintain and ship while you sleep and ...''';

final List<AppModel> appsData = [
  const AppModel(title: "About me", colorHex: "#B3B3B3", iconClass: "fa-regular fa-user", route: "/about"),
  const AppModel(title: "MySkills", colorHex: "#B3B3B3", iconClass: "fa-brands fa-connectdevelop", route: "/skills"),
  const AppModel(title: "Education", colorHex: "#B3B3B3", iconClass: "fa-solid fa-book-open", route: "/education"),
  const AppModel(title: "Experience", colorHex: "#B3B3B3", iconClass: "fa-regular fa-id-badge", route: "/experience"),
  const AppModel(title: "Competitions", colorHex: "#B3B3B3", iconClass: "fa-solid fa-trophy", route: "/competitions"),
  const AppModel(title: "Github", colorHex: "#B3B3B3", iconClass: "fa-brands fa-github", link: githublink),
  const AppModel(title: "LinkedIn", colorHex: "#B3B3B3", iconClass: "fa-brands fa-linkedin-in", link: linkedin),
  const AppModel(title: "Instagram", colorHex: "#B3B3B3", iconClass: "fa-brands fa-instagram", link: instagram),
  const AppModel(title: "Mail", colorHex: "#B3B3B3", iconClass: "fa-regular fa-envelope", route: "/email"),
  const AppModel(title: "Pong", colorHex: "#B3B3B3", iconClass: "fa-solid fa-gamepad", route: "/pong"),
];

final List<BgModel> fancyColorPalette = [
  const BgModel(
    color: "#4C77AF",
    gradient: "linear-gradient(135deg, #4C77AF 0%, #00CCFF 100%)",
    svgPath: "images/iManifestSea.svg",
  ),
  const BgModel(
    color: "#FF5252",
    gradient: "linear-gradient(135deg, #FF5252 0%, #FF9800 100%)",
    svgPath: "images/iManifestSea.svg",
  ),
  const BgModel(
    color: "#9901AD",
    gradient: "linear-gradient(135deg, #9901AD 0%, #825ACC 100%)",
    svgPath: "images/iManifestSea.svg",
  ),
  const BgModel(
    color: "#0121AD",
    gradient: "linear-gradient(135deg, #0121AD 0%, #2040D1 100%)",
    svgPath: "images/iManifestSea.svg",
  ),
];

final List<EmuDevice> emuDevices = [
  const EmuDevice(
      name: "Samsung S20", iconClass: "fa-solid fa-mobile-screen-button", width: 360, height: 740, type: 'phone'),
  const EmuDevice(name: "iPhone 15 Pro", iconClass: "fa-brands fa-apple", width: 393, height: 852, type: 'phone'),
  const EmuDevice(name: "Linux Tablet", iconClass: "fa-brands fa-linux", width: 768, height: 1024, type: 'tablet'),
];

final List<EduModel> eduData = [
  const EduModel(
    title: "Undergraduate in Computer Science",
    school: "University of Belgrade- FON",
    startDate: "2019",
    endDate: "expected 2026",
    descriptionHtml: [
      "Enrolled in this faculty after one semester at the Faculty of Mechanical Engineering, where I participated in a business case competition and secured 2nd place.",
      "Realized my potential to become a manager, leading to my decision to switch faculties and pursue a career as an app developer.",
      "Won multiple competitions and formed lifelong friendships and connections through the student organization <a href='https://www.fonis.rs' target='_blank' style='color:blue; text-decoration:underline;'>FONIS</a>.",
      "Faced health challenges that caused a two-year (2022-2024 nov) hiatus from studies, but I resumed my education at the end of 2024 and am now actively passing exams to complete my degree.",
    ],
    location: "Belgrade, Serbia",
    colorHex: "#2196F3",
  ),
  const EduModel(
    title: "High School Student",
    school: "Gymnasium Mladenovac",
    startDate: "2014",
    endDate: "2018",
    descriptionHtml: [
      "Class for Sciences, school backetball team, school orchestra (guitar,piano)",
      "Primary Musical School (guitar,therory of music).",
    ],
    location: "Mladenovac, Serbia",
    colorHex: "#2196F3",
  ),
];

final List<ExperienceModel> experienceData = [
  const ExperienceModel(
    colorHex: "#4CAF50",
    location: "Belgrade/Mladenovac",
    title: 'Android Engineer',
    company: 'IGT Code',
    startDate: 'November 2025',
    endDate: 'January 2026',
    link: 'https://www.novita-media.com/',
    bulletPointsHtml: [
      "Implemented AndroidTV app for displaying ads over TV stream.",
      "Kiosk mode with admin panel built using FlutterFlow.",
      "Autoupdate built using Supabase.",
    ],
  ),
  const ExperienceModel(
    colorHex: "#7F52FF",
    location: "Remote",
    title: 'Android Developer – Kotlin Multiplatform',
    company: 'Tourist Guide Freelance',
    startDate: 'June 2025',
    endDate: 'August 2025',
    bulletPointsHtml: [
      "Built Android module and shared logic (common package), used Jetpack Compose for UI, SpringBoot (Kotlin) as back-end solution (hosted on AWS S3). Writing tests (JUnit, Espresso), preparation for release (Google Play console).",
      "First encounter with MVI architecture and SpringBoot using Kotlin. Google Maps used to display touristic attractions, GPS (via AndroidManifest.xml) for proximity detection, background notification service.",
    ],
  ),
  const ExperienceModel(
    colorHex: "#FF5252",
    location: "Remote",
    title: 'Flutter Mentorship',
    company: 'private mentoring',
    startDate: 'March 2024',
    endDate: 'July 2024',
    bulletPointsHtml: [
      "Mentorship program focused on Flutter,creating an app with real-time group chats using Supabase.",
      "Utilized Provider and Streams for effective state management, ensuring a seamless user experience.",
      "Enhanced basics in Dart by learning and applying object-oriented programming (OOP) concepts.",
      "Engaged in daily meetings for continuous learning, actively preparing for a junior developer role",
    ],
  ),
  const ExperienceModel(
    colorHex: "#2196F3",
    location: "Remote",
    title: 'Flutter Internship',
    company: 'Credeo',
    startDate: 'July 2022',
    endDate: 'Dec 2022',
    bulletPointsHtml: [
      "Participated in the Credeo Summer Camp, gaining hands-on experience in software development.",
      "Task: writing unit and widget tests, creating basic UI.",
      "Secured my first internship, providing an invaluable opportunity to work in IT and express gratitude for experience.",
    ],
  ),
  const ExperienceModel(
    colorHex: "#43A047",
    location: "NTP Beograd/remote",
    title: 'Student Startup Co-Founder',
    company: 'SportUP/Taptivity',
    startDate: 'July 2021',
    endDate: 'May 2022',
    bulletPointsHtml: [
      "Won startup competitions: ParkUP2021, Univerzum Accelerator 2021, Raising Stars 2022",
      "Engaged in pitching, mentorship sessions and business education, making my first contact with Flutter technology.",
      "Developed proof of concept, roles in development and team leading, monitoring team activities.",
    ],
  ),
  const ExperienceModel(
    colorHex: "#FF9800",
    location: "Faculty Of Organizational Sciences (FON)",
    title: 'Member of student organization',
    company: 'FONIS',
    startDate: 'Nov 2019',
    endDate: '∞',
    bulletPointsHtml: [
      "Contributed to the design team for various projects used tools: Adobe Creative and SparkAR",
      "Conducted introductory lectures and workshops on Flutter for student members: 'Join The Dart Side'.",
      "Actively participated as a member of the IT,HR and PR teams.",
      "Mentored new members, providing guidance and support.",
    ],
  ),
];

final List<SkillsModel> skillsData = [
  const SkillsModel(skillName: "Android", colorHex: "#00FF00", iconClass: "fa-brands fa-android"),
  const SkillsModel(skillName: "Kotlin", colorHex: "#CD09F5", iconClass: "fa-brands fa-android"),
  const SkillsModel(skillName: "Java", colorHex: "#2196F3", iconClass: "fa-brands fa-java"),
  const SkillsModel(skillName: "Room", colorHex: "#00FF73", iconClass: "fa-solid fa-database"),
  const SkillsModel(skillName: "Jetpack Compose", colorHex: "#9C27B0", iconClass: "fa-brands fa-uikit"),
  const SkillsModel(skillName: "MVVM Architecture", colorHex: "#009688", iconClass: "fa-solid fa-layer-group"),
  const SkillsModel(skillName: "LiveData & Flow", colorHex: "#00BCD4", iconClass: "fa-solid fa-stream"),
  const SkillsModel(skillName: "Coroutine & Flow", colorHex: "#69F0AE", iconClass: "fa-solid fa-infinity"),
  const SkillsModel(skillName: "Retrofit", colorHex: "#F44336", iconClass: "fa-solid fa-network-wired"),
  const SkillsModel(skillName: "Hilt (Dagger)", colorHex: "#607D8B", iconClass: "fa-solid fa-syringe"),
  const SkillsModel(
      skillName: "Flutter", colorHex: "#2196F3", iconClass: "fa-brands fa-flutter", imagePath: 'images/flutterimg.svg'),
  const SkillsModel(skillName: "Dart", colorHex: "#00B4D8", iconClass: "fa-solid fa-code"), // Better icon for Dart
  const SkillsModel(skillName: "Provider", colorHex: "#FF9800", iconClass: "fa-solid fa-layer-group"),
  const SkillsModel(skillName: "Git", colorHex: "#FF960D", iconClass: "fa-brands fa-git"),
  const SkillsModel(skillName: "Firebase", colorHex: "#FFEB3B", iconClass: "fa-solid fa-fire"),
  const SkillsModel(skillName: "Supabase", colorHex: "#B2FF59", iconClass: "fa-solid fa-database"),
  const SkillsModel(skillName: "Project Management", colorHex: "#2196F3", iconClass: "fa-solid fa-table"),
];

final List<SkillsModel> languagesData = [
  const SkillsModel(skillName: "English", colorHex: "#FF9800", iconClass: "fa-solid fa-language"),
  const SkillsModel(skillName: "Russian", colorHex: "#000000", iconClass: "fa-solid fa-language"),
  const SkillsModel(skillName: "Serbian", colorHex: "#607D8B", iconClass: "fa-solid fa-language"),
];

final List<CompetitionModel> competitionsData = [
  const CompetitionModel(
    title: "Fonis C2S Tech Challenge",
    organization: "FONIS-FON",
    date: "May 2023",
    bulletPointsHtml: [
      "Solved case study by Adacta",
      "<a href='https://www.instagram.com/p/Csg8eu8Mx-gtKdUqhBy1cBfxa-4ocwq7GSR2sc0/' target='_blank' style='color:blue; text-decoration:underline;'>1st place</a>",
      "First competition after a hiatus, successfully regaining confidence to pitch, small but important comeback.",
      "Interesting case study about IoT devices in automotive industry.",
    ],
    location: "Belgrade, Serbia",
    colorHex: "#F44336",
  ),
  const CompetitionModel(
    title: "Raising Starts 2022",
    organization: "Startup Competition",
    date: "May 2022",
    bulletPointsHtml: [
      "One of selected teams to pass further <a href='https://ntpark.rs/en/2022/05/09/selected-startups-to-participate-in-phase-2-of-the-raising-starts-2-0-program/' target='_blank' style='color:blue; text-decoration:underline;'>Raising Starts 2.0</a>",
      "Mentorships, connecting with staartups, working further on prototype,tracking progress.",
    ],
    location: "Belgrade, Serbia",
    colorHex: "#448AFF",
  ),
  const CompetitionModel(
    title: "Univerzum 2021",
    organization: "Startup Competition",
    date: "2021",
    bulletPointsHtml: [
      "Won 2.5k eur grant and mentorship <a href='https://nova.rs/vesti/biznis/citav-univerzum-novih-ideja-50-strucnjaka-podrzalo-startap-akcelerator/' target='_blank' style='color:blue; text-decoration:underline;'>Univerzum Akcelerator</a>",
      "Continued mentorships, working on proof of concept, analysing market.",
    ],
    location: "Belgrade, Serbia",
    colorHex: "#FF9800",
  ),
  const CompetitionModel(
    title: "ParkUP2021",
    organization: "Student Startup Competition",
    date: "July 2021",
    bulletPointsHtml: [
      "Won the student startup competition <a href='https://brainz.center/tim-sportup-trijumfovao-u-studenstkom-startap-kampu-parkup/' target='_blank' style='color:blue; text-decoration:underline;'>ParkUP2021</a>",
      "My roles included development and team leading, monitoring team activities, project management, Developing MVP using Google Maps and Firebase, pitching, mentorship sessions, and business education.",
    ],
    location: "Belgrade, Serbia",
    colorHex: "#448AFF",
  ),
];
