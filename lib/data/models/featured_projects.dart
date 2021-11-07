import 'package:flutter/material.dart';
import 'package:simbi_health/ui/shared/colors.dart';

class FeaturedProjects {
  final String? projectTitle;
  final String? projectSubTitle;
  final String? about;
  final String? language;
  final String? image;
  final Color? firstTextColor;
  final Color? containerColor;
  final Color? secondTextColor;
  final Color? languageTextColor;
  final Color? languageContainerColor;
  final List<String>? galleryImages;
  final List<ProjectsVideo>? videos;
  final List<Session>? sessions;

  const FeaturedProjects(
      {this.projectTitle,
      this.projectSubTitle,
      this.language,
      this.image,
      this.firstTextColor,
      this.containerColor,
      this.languageContainerColor,
      this.languageTextColor,
      this.secondTextColor,
      this.about,
      this.galleryImages,
      this.videos,
      this.sessions,
      });
}

class ProjectsVideo {
  final String? projectTitle;
  final String? yearUploaded;
  final String? duration;
  final String? image;

  const ProjectsVideo(
      {this.projectTitle, this.yearUploaded, this.image, this.duration});
}

class Session {
  final String? number;
  final String? title;
  final String? duration;
  final bool? isLocked;
  final String? sessionImage;
  final Color? containerColor;
  final List<Presentation>? presentation;
  final List<Question>? question;
  final List<Activity>? activity;

  const Session(
      {this.number, this.title, this.duration, this.isLocked, this.containerColor, this.sessionImage, this.presentation, this.question, this.activity});
}

class Presentation {
  final String? title;
  final List<dynamic>? points;


  const Presentation(
      {this.title, this.points,});
}

class Activity {
  final String? title;
  final List<dynamic>? howTos;
  final List<dynamic>? resources;
  final List<dynamic>? recap;


  const Activity(
      {this.title, this.resources, this.howTos, this.recap});
}

class Question {
  final String? question;
  final String? correctAnswer;
  final List<dynamic>? options;


  const Question(
      {this.question, this.options, this.correctAnswer});
}

final List<String>? images = [
    "assets/images/one.png",
    'assets/images/two.png',
    'assets/images/three.png',
    "assets/images/four.png",
    'assets/images/five.png',
    'assets/images/six.png',
    'assets/images/seve.png',
  'assets/images/eight.png',
      'assets/images/nine.png',
  'assets/images/ten.png'
];

final List<FeaturedProjects> featuredProjects = [
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "Hausa",
      image: "assets/images/featured_project1.png",
      firstTextColor: AppColors.simbiPrimaryColor,
      containerColor: AppColors.yellowColor,
      languageContainerColor: Color.fromRGBO(255, 255, 255, 0.3),
      secondTextColor: AppColors.blackColor,
      languageTextColor: Colors.white,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/featured_project1.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],
    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
        sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "The Brain",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Mental Health, Mental Distress and Mental illness",
                points: [
                  "Mental Health\nA state of well-being in which the individual realizes his or her own abilities, can cope with the normal stresses of life, can work productively and fruitfully and is able to make a contribution to his or her community",
                  "Mental Illness\nA variety of psychiatric problems that vary in intensity and duration, and may recur. E.g. anxiety, mood, eating, and psychotic disorders.",
                  "Mental Distress\nOccurs when people perceive that they cannot adequately cope with the demands or threats to their well-being.",
                ]
            ),

            Presentation(
                title: "Illustration One",
                points: [
                  "To have better understanding of the brain functions.",
                  "However, her school teacher noticed these feelings and advised her on the easier ways to approach the exam. Dija acted accordingly and passed the exam. She became happy and never feared any Mathematics exam thereafter.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "Dija is a teenager who is always anxious of writing Mathematics exam because she thinks the exam is difficult, therefore, she experiences psychological stress.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
        activity: [
          Activity(
            title: "Activity 1: The human brain",
            resources: [
              "Colourful images of the human brain"
            ],
            howTos: [
              "Participants should express different emotions",
              "They should explain what controls the activities they just performed and how they were able to do it.",
              "Introduce the brain and its key functions using images.",
              "Explain how brain malfunctions lead to mental illness.",
            ],
            recap: [
              "Ask the participants to explain what they learnt in their own words"
            ]
          ),

          Activity(
              title: "Activity 2",
              resources: [],
              howTos: [
                "Participants should define mental health and mental illness.",
                "They should share their views and experiences about people with mental illness.",
                "Show them pictures of famous people who have recovered from mental illness",
                "Play a video of stories of young people with mentally illness that have recovered.",
              ],
              recap: [
                "Ask the participants to explain what hey learnt in their own words"
              ]
          ),

          Activity(
              title: "Activity 3",
              resources: [],
              howTos: [
                "Participants should:",
                " Discuss the risk factors of mental illness.",
                "Mention the mental illnesses they know.",
                "Mention different terms used to describe mental illness.",
                "Describe how they would help someone with mental illness",
                " 2) Explain",
                "Sources of mental distress and how it causes mental disorders.",
                "Available treatment strategies",
                "Factors that help with recovery"
              ],
              recap: []
          ),
        ],
        question:[
          Question(
            question: "From the illustration indicate when Dija experienced mental distress.",
            options: [
              "When she was possessed?",
              "When her mind was infiltrated?",
              "When she used cannabis?"
            ],
            correctAnswer: "When she was possessed?"
          ),

          Question(
              question: "From the illustration indicate when Dija experienced mental distress.",
              options: [
                "When she was possessed?",
                "When her mind was infiltrated?",
                "When she used cannabis?"
              ],
              correctAnswer: "When she was possessed?"
          ),
        ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),
    ],
  ),
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "Hausa",
      image: "assets/images/featured_project2.png",
      firstTextColor: AppColors.simbiPrimaryColor,
      containerColor: Colors.white,
      languageContainerColor: Color.fromRGBO(255, 191, 33, 0.3),
      secondTextColor: AppColors.simbiPrimaryColor,
      languageTextColor: AppColors.simbiPrimaryColor,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/featured_project2.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],
    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),
    ],
  ),
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "Hausa",
      image: "assets/images/feat_project4.png",
      firstTextColor: AppColors.whiteColor,
      containerColor: AppColors.simbiPrimaryColor,
      languageContainerColor: Color.fromRGBO(255, 255, 255, 0.3),
      secondTextColor: AppColors.whiteColor,
      languageTextColor: Colors.white,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/feat_project4.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],
    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),
    ],
  ),
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "French",
      image: "assets/images/feat_project4.png",
      firstTextColor: AppColors.simbiPrimaryColor,
      containerColor: AppColors.yellowColor,
      languageContainerColor: Color.fromRGBO(255, 255, 255, 0.3),
      secondTextColor: AppColors.blackColor,
      languageTextColor: Colors.white,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/feat_project4.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],
    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),
    ],
  ),
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "Hausa",
      image: "assets/images/feat_project3.png",
      firstTextColor: AppColors.simbiPrimaryColor,
      containerColor: AppColors.yellowColor,
      languageContainerColor: Color.fromRGBO(255, 255, 255, 0.3),
      secondTextColor: AppColors.blackColor,
      languageTextColor: Colors.white,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/feat_project3.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],
    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),
    ],
  ),
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "English",
      image: "assets/images/featured_project1.png",
      firstTextColor: AppColors.simbiPrimaryColor,
      containerColor: Colors.white,
      languageContainerColor: Color.fromRGBO(255, 191, 33, 0.3),
      secondTextColor: AppColors.simbiPrimaryColor,
      languageTextColor: AppColors.simbiPrimaryColor,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/featured_project1.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],
    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),
    ],
  ),
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "Hausa",
      image: "assets/images/feat_project2.png"
          "",
      firstTextColor: AppColors.whiteColor,
      containerColor: AppColors.simbiPrimaryColor,
      languageContainerColor: Color.fromRGBO(255, 255, 255, 0.3),
      secondTextColor: AppColors.whiteColor,
      languageTextColor: Colors.white,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/feat_project2.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],

    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ]
      ),
    ],
  ),
  FeaturedProjects(
      projectTitle: "Brave",
      projectSubTitle: "Heart",
      language: "English",
      image: "assets/images/feat_project4.png",
      firstTextColor: AppColors.simbiPrimaryColor,
      containerColor: AppColors.yellowColor,
      languageContainerColor: Color.fromRGBO(255, 255, 255, 0.3),
      secondTextColor: AppColors.blackColor,
      languageTextColor: Colors.white,
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper in facilisis urna volutpat adipiscing ut vehicula. Mattis orci adipiscing justo in duis magnis quis quam. In nulla ligula augue mi faucibus suscipit dui. Pharetra tempor tempus cursus imperdiet vestibulum, sem egestas fringilla venenatis.",
      galleryImages: [
        "assets/images/feat_project4.png",
        'assets/images/gallery1.png',
        'assets/images/gallery6.png',
        "assets/images/gallery3.png",
        'assets/images/gallery2.png',
        'assets/images/gallery4.png',
        'assets/images/gallery2.png'
      ],
      videos: [
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "10:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "20:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "30:30"),
        ProjectsVideo(
            projectTitle: "A brief about SimbiHealth",
            yearUploaded: "1 year ago",
            image: "assets/images/v_cover1.png",
            duration: "40:00"),
      ],
    sessions: [
      Session(
          number: "One",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: false,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Two",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Three",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Four",
          title: "Understanding mental health and\nmental health disorders",
          duration: "35",
          isLocked: true,
          containerColor: AppColors.simbiPrimaryColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Five",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "25",
          isLocked: true,
          containerColor: AppColors.lightBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),

      Session(
          number: "Six",
          title: "Common misconceptions and myths\nabout mental health",
          duration: "45",
          isLocked: true,
          containerColor: AppColors.deepBlueColor,
          sessionImage: "assets/images/session_image.png",
          presentation: [
            Presentation(
                title: "Aim",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Intro",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 2",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 3",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 4",
                points: [
                  "Controls and regulates different body functions.",
                  "Responsible for thoughts, emotions and memory storage. ",
                  " Responses to experiences can be positive or negative, the negative responses can be worsened leading to mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 5",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 6",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Explanation 7",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),

            Presentation(
                title: "Conclusion",
                points: [
                  "To have better understanding of the brain functions.",
                  "To explain mental health concepts.",
                  "To illustrate the risk factors of mental illness.",
                ]
            ),
          ],
          activity: [
            Activity(
                title: "Activity 1: The human brain",
                resources: [
                  "Colourful images of the human brain"
                ],
                howTos: [
                  "Participants should express different emotions",
                  "They should explain what controls the activities they just performed and how they were able to do it.",
                  "Introduce the brain and its key functions using images.",
                  "Explain how brain malfunctions lead to mental illness.",
                ],
                recap: [
                  "Ask the participants to explain what they learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 2",
                resources: [],
                howTos: [
                  "Participants should define mental health and mental illness.",
                  "They should share their views and experiences about people with mental illness.",
                  "Show them pictures of famous people who have recovered from mental illness",
                  "Play a video of stories of young people with mentally illness that have recovered.",
                ],
                recap: [
                  "Ask the participants to explain what hey learnt in their own words"
                ]
            ),

            Activity(
                title: "Activity 3",
                resources: [],
                howTos: [
                  "Participants should:",
                  " Discuss the risk factors of mental illness.",
                  "Mention the mental illnesses they know.",
                  "Mention different terms used to describe mental illness.",
                  "Describe how they would help someone with mental illness",
                  " 2) Explain",
                  "Sources of mental distress and how it causes mental disorders.",
                  "Available treatment strategies",
                  "Factors that help with recovery"
                ],
                recap: []
            ),
          ],
          question:[
            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),

            Question(
                question: "From the illustration indicate when Dija experienced mental distress.",
                options: [
                  "When she was possessed?",
                  "When her mind was infiltrated?",
                  "When she used cannabis?"
                ],
                correctAnswer: "When she was possessed?"
            ),
          ]
      ),
    ],
  ),
];
