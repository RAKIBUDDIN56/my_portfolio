import 'package:flutter/material.dart';

import '../core/models/project.dart';
import '../core/models/skill_display.dart';
import '../core/models/skill_model.dart';
import '../core/models/technologies.dart';
import '../core/models/timeline_experience.dart';
import 'icons.dart';

//*Social Media Links
mixin SocialLinks {
  static const String linkedinUrl =
      'https://www.linkedin.com/in/rakib-uddin-rdk45/';
  static const String mediumLink = '###';
  static const String twitterLink = '##';
  static const String githubLink = 'https://github.com/RAKIBUDDIN56';
  static const String facebookLink =
      'https://www.facebook.com/profile.php?id=100007266961268';
  static const String instagramLink = '###';
  static const String telegramLink = '###';
}

//*System Defaults
mixin SystemProperties {
  static const String fontName = 'Montserrat';
  static const String titleFont = 'Lato';
}

//*Education Details
mixin EducationDetails {
  static const String collegeName = 'Cantonment College, Jessore, Bangladesh';
  static const String collegeTimeline = '2012 - 2014';
  static const String schoolName = '####';

  static const String schoolTimeline = '####';
  static const String universityName =
      'Sri Lanka Institute Of Information Technology';
  static const String universityTimeline = '2018- 2021';

  static const String universityStream =
      'BSc in IT (Specialization in Softaware Engineering)';
  static const String schoolStream = 'SSC';
  static const String collegeStream = 'Intermediate';

  // static const double universityPercentage = 75.4;
  // static const double schoolPercentage = 95.2;
  // static const double collegePercentage = 93;
}

//*Personal details
mixin PersonalDetails {
  static const List<SkillDisplay> skillDisplayList = [
    SkillDisplay(
        title: 'Mobile Application Developement',
        color: Color(0xFFE2A599),
        iconData: SkillDisplayIcons.appIcon),
    SkillDisplay(
        title: 'Web Developement',
        color: Color(0xFF5E57BB),
        iconData: SkillDisplayIcons.websiteIcon),
    SkillDisplay(
        title: 'AI/ML Engineering',
        color: Color(0xFFE45447),
        iconData: SkillDisplayIcons.mlIcon),
    SkillDisplay(
        title: 'Database Management',
        color: Color(0xFFFFB300),
        iconData: SkillDisplayIcons.databaseIcon)
  ];
  static const String resumeLink = '###';
  static const String whatsappLink = 'https://wa.me/01521432316';
  static const List<Technologies> techList = [
    Technologies(icon: TechnologiesIcon.reactJsIcon, name: 'React JS'),
    Technologies(icon: TechnologiesIcon.javaIcon, name: 'Java'),
    Technologies(icon: TechnologiesIcon.pythonIcon, name: 'Python')
  ];
  static const String githubUserName = 'rakibuddin56';
  static const String githubDataUrl =
      'https://api.github.com/users/$githubUserName/repos';
  static List<Project> projectsList = [
    Project(
        id: '0',
        type: ['Website'],
        title: 'Hostel Management',
        githubLink: '###',
        websiteLink: 'https://hostel-app-test.herokuapp.com/login',
        description:
            'Created a hostel management web app to track students where they are, and download data of attendance for each day',
        tools: ['Redux', 'Node Js', 'Express Js', 'Mongo DB', 'React Js']),
    Project(
        id: '10',
        type: ['Backend'],
        title: 'Node Mailer',
        githubLink: '###',
        description:
            'Backend for sending mails.Used to add functionality of sending mail without opening any other applications',
        tools: ['Node JS', 'Email JS', 'Express JS'])
  ];
  static const List<String> skillsList = [
    'Flutter',
    'Nodejs',
    'Go',
    'Git',
    'Firebase',
    'Problem Solving',
  ];

  static const List<ExperienceTimeline> experienceList = [
    ExperienceTimeline(
        title: 'Riseup Lbas',
        position: 'Software Engineer',
        timePeriod: 'Aug 2022 - Present',
        description: [
          'Worked as an intern for mobile app developement and front end developer',
          'Application is similar to Workflowy for note taking',
          'Added export service of all the data present in the parent node',
          'Added Functionality to customize text styling dynamically'
        ],
        tools: [
          'Flutter',
          'Html',
          'Css',
          'JS',
          'React',
          'Flask',
          'Celery',
          'Mongo DB'
        ]),
    ExperienceTimeline(
        title: 'SHIELD TECHNOLOGIES (PRIVATE)LIMITED',
        position: 'Software Enginner Intern',
        timePeriod: 'Jun 2021 - Jan 2022',
        description: [
          'Worked as an intern for mobile app developement and front end developer',
          'Application is similar to Workflowy for note taking',
          'Added export service of all the data present in the parent node',
          'Added Functionality to customize text styling dynamically'
        ],
        tools: [
          'Flutter',
          'Firebase',
          'Figma'
        ]),
    ExperienceTimeline(
        title: 'Alofa TechLabs',
        position: 'Flutter Developer',
        timePeriod: 'Jan 2022 - May 2022',
        description: [
          'Worked as an intern for mobile app developement and front end developer',
          'Application is similar to Workflowy for note taking',
          'Added export service of all the data present in the parent node',
          'Added Functionality to customize text styling dynamically'
        ],
        tools: [
          'Flutter',
          'Figma',
          'PHP'
        ]),
    ExperienceTimeline(
      tools: ['Flutter', 'Figma'],
      timePeriod: 'Jun 2022 - Sep 2022',
      title: 'Skies Engineering & Technologies Limited',
      position: 'App Developer',
      description: [
        'Worked as an intern for mobile app developement and front end developer',
        'Application is similar to Workflowy for note taking',
        'Added export service of all the data present in the parent node',
        'Added Functionality to customize text styling dynamically'
      ],
    ),
  ];
  static const String email = 'rakibuddin560p@gmail.com';
  static List<SkillModel> featuredSkills = [
    SkillModel(name: 'Mobile Application Developement', percent: 95),
    SkillModel(name: 'Web Developer', percent: 90),
    SkillModel(name: 'Backend Developer', percent: 89),
  ];

  static const String userName = 'Rakib Uddin';
  static const String shortIntro =
      'I’m Rakib Uddin and I’m a full stack developer, and I specialize in building efficient Flutter Applications that just work across all platforms and browsers. I care deeply about building interfaces that are usable and pleasant for the most number of people possible.And my main motto is whenever building any application is to always build pixel perfect high performant applications that provide user with a rich experience.';
  static const String intro =
      "I started my career into developement as android developer.First I built android applications in native android.Later I heared about flutter which helps in building cross platform applications.After gaining experience in flutter,I applied to internships,through which I was able to learn communication skills and code architectures.After that I worked as a freelancer and gained experience of how to build applications in production level.Presently I'm focusing on web developement.I learnt MERN Stack.And working projects on it.";
}
