class Story{
final String? title;
final String? language;
final String? image;
final List<StoryParagraph>? paragraph;
final List<dynamic>? lesson;
final String? author;
final String? time;


const Story({this.title, this.language, this.image, this.paragraph, this.lesson, this.author, this.time});
}

class StoryParagraph{
  final String? text;



  const StoryParagraph({this.text});
}

class Lesson{
  final String? text;



  const Lesson({this.text});
}



final List<Story> stories = [
  Story(title: "It's okay to ask\nfor help",
      language: 'Hausa',
      image: "assets/images/smile.jpeg",
    author: "Miracle Adesina",
    time: "20min",
    paragraph: [
      StoryParagraph(
          text: "Danjuma met David at the camp water tanks every morning. They barely spoke to each other but always gave a customary nod in each other’s direction. On a particular day, they went to fetch water but Dajuma noticed that David had not given the usual nod. Danjuma noticed he was shaking and sweating profusely. Thinking maybe he was having a heart attack, Danjuma had run to his side and held him. After some minutes of rapid breaths, it seemed David got better."
          ),

      StoryParagraph(
          text: "David assured him it was not a heart attack and that he was not dying. Rather, it was what was referred to as Generalized Anxiety Disorder. “How are you dealing with that? Did you go to the camp clinic? Who did you tell? Aren’t you worried people would call you names? Laugh at you?”"
      ),

      StoryParagraph(
          text: "As they talked, David was able to convince Danjuma that it was okay to acknowledge his symptoms and seek for help. As they discussed their family members who had same symptoms as them, they made their way to the camp clinic where David was finally able to get the care he needed."
      )
    ],

      lesson: [
        "It is not a bad thing to acknowledge that you are ill",
        "It is a first step to take in the journey of recovery",
        "Ask for help and talk to professionals"

      ]
  ),
  Story(title: "Story of Amina the\n'Biz' babe",
      language: 'English',
      image: "assets/images/beautiful_young_black_woman_smiling_picture.jpeg",
      author: "Adesina Smart",
      time: "10min",
      paragraph: [
        StoryParagraph(
            text: "Danjuma met David at the camp water tanks every morning. They barely spoke to each other but always gave a customary nod in each other’s direction. On a particular day, they went to fetch water but Dajuma noticed that David had not given the usual nod. Danjuma noticed he was shaking and sweating profusely. Thinking maybe he was having a heart attack, Danjuma had run to his side and held him. After some minutes of rapid breaths, it seemed David got better."
        ),

        StoryParagraph(
            text: "David assured him it was not a heart attack and that he was not dying. Rather, it was what was referred to as Generalized Anxiety Disorder. “How are you dealing with that? Did you go to the camp clinic? Who did you tell? Aren’t you worried people would call you names? Laugh at you?”"
        ),

        StoryParagraph(
            text: "As they talked, David was able to convince Danjuma that it was okay to acknowledge his symptoms and seek for help. As they discussed their family members who had same symptoms as them, they made their way to the camp clinic where David was finally able to get the care he needed."
        )
      ],
      lesson: [
        "It is not a bad thing to acknowledge that you are ill",
      "It is a first step to take in the journey of recovery",
      "Ask for help and talk to professionals"

      ]
  ),
  Story(title: "It's okay to ask\nfor help",
      language: 'Hausa',
      image: "assets/images/smile.jpeg",
      author: "Miracle Smart",
      time: "15min",
      paragraph: [
        StoryParagraph(
            text: "Danjuma met David at the camp water tanks every morning. They barely spoke to each other but always gave a customary nod in each other’s direction. On a particular day, they went to fetch water but Dajuma noticed that David had not given the usual nod. Danjuma noticed he was shaking and sweating profusely. Thinking maybe he was having a heart attack, Danjuma had run to his side and held him. After some minutes of rapid breaths, it seemed David got better."
        ),

        StoryParagraph(
            text: "David assured him it was not a heart attack and that he was not dying. Rather, it was what was referred to as Generalized Anxiety Disorder. “How are you dealing with that? Did you go to the camp clinic? Who did you tell? Aren’t you worried people would call you names? Laugh at you?”"
        ),

        StoryParagraph(
            text: "As they talked, David was able to convince Danjuma that it was okay to acknowledge his symptoms and seek for help. As they discussed their family members who had same symptoms as them, they made their way to the camp clinic where David was finally able to get the care he needed."
        )
      ],
      lesson: [
        "It is not a bad thing to acknowledge that you are ill",
        "It is a first step to take in the journey of recovery",
      "Ask for help and talk to professionals",
      ]
  ),
  Story(title: "Story of Amina the\n'Biz' babe",
      language: 'English',
      image: "assets/images/smile.jpeg",
      author: "Bilikisu Adeleke",
      time: "10min",
      paragraph: [
        StoryParagraph(
            text: "Danjuma met David at the camp water tanks every morning. They barely spoke to each other but always gave a customary nod in each other’s direction. On a particular day, they went to fetch water but Dajuma noticed that David had not given the usual nod. Danjuma noticed he was shaking and sweating profusely. Thinking maybe he was having a heart attack, Danjuma had run to his side and held him. After some minutes of rapid breaths, it seemed David got better."
        ),

        StoryParagraph(
            text: "David assured him it was not a heart attack and that he was not dying. Rather, it was what was referred to as Generalized Anxiety Disorder. “How are you dealing with that? Did you go to the camp clinic? Who did you tell? Aren’t you worried people would call you names? Laugh at you?”"
        ),

        StoryParagraph(
            text: "As they talked, David was able to convince Danjuma that it was okay to acknowledge his symptoms and seek for help. As they discussed their family members who had same symptoms as them, they made their way to the camp clinic where David was finally able to get the care he needed."
        )
      ],
      lesson: [
        "It is not a bad thing to acknowledge that you are ill",

        "It is a first step to take in the journey of recovery",
      "Ask for help and talk to professionals",
      ]
  ),
  Story(title: "It's okay to ask\n for help",
      language: 'Hausa',
      image: "assets/images/beautiful_young_black_woman_smiling_picture.jpeg",
      author: "Joy Mike",
      time: "30min",
      paragraph: [
        StoryParagraph(
            text: "Danjuma met David at the camp water tanks every morning. They barely spoke to each other but always gave a customary nod in each other’s direction. On a particular day, they went to fetch water but Dajuma noticed that David had not given the usual nod. Danjuma noticed he was shaking and sweating profusely. Thinking maybe he was having a heart attack, Danjuma had run to his side and held him. After some minutes of rapid breaths, it seemed David got better."
        ),

        StoryParagraph(
            text: "David assured him it was not a heart attack and that he was not dying. Rather, it was what was referred to as Generalized Anxiety Disorder. “How are you dealing with that? Did you go to the camp clinic? Who did you tell? Aren’t you worried people would call you names? Laugh at you?”"
        ),

        StoryParagraph(
            text: "As they talked, David was able to convince Danjuma that it was okay to acknowledge his symptoms and seek for help. As they discussed their family members who had same symptoms as them, they made their way to the camp clinic where David was finally able to get the care he needed."
        )
      ],
      lesson: [
        "It is not a bad thing to acknowledge that you are ill",
        "It is a first step to take in the journey of recovery",
        "Ask for help and talk to professionals"

      ]
  ),
  Story(title: "Story of Amina the\n'Biz' babe",
      language: 'English',
      image: "assets/images/beautiful_young_black_woman_smiling_picture.jpeg",
      author: "Sani Bello",
      time: "40min",
      paragraph: [
        StoryParagraph(
            text: "Danjuma met David at the camp water tanks every morning. They barely spoke to each other but always gave a customary nod in each other’s direction. On a particular day, they went to fetch water but Dajuma noticed that David had not given the usual nod. Danjuma noticed he was shaking and sweating profusely. Thinking maybe he was having a heart attack, Danjuma had run to his side and held him. After some minutes of rapid breaths, it seemed David got better."
        ),

        StoryParagraph(
            text: "David assured him it was not a heart attack and that he was not dying. Rather, it was what was referred to as Generalized Anxiety Disorder. “How are you dealing with that? Did you go to the camp clinic? Who did you tell? Aren’t you worried people would call you names? Laugh at you?”"
        ),

        StoryParagraph(
            text: "As they talked, David was able to convince Danjuma that it was okay to acknowledge his symptoms and seek for help. As they discussed their family members who had same symptoms as them, they made their way to the camp clinic where David was finally able to get the care he needed."
        )
      ],
      lesson: [
        "It is not a bad thing to acknowledge that you are ill",

        "It is a first step to take in the journey of recovery",
        "Ask for help and talk to professionals"
      ]
  ),
];