class Question {
  final String question;
  final String questionEnglish;
  final List<String> options;
  final int correctAnswerIndex;
  final int gameLevel;
  final String category;

  Question({
    required this.question,
    required this.questionEnglish,
    required this.options,
    required this.correctAnswerIndex,
    required this.gameLevel,
    required this.category,
  });
}

List<Question> quizQuestions = [
  // --- Game Level 1 (40 Questions - Easy) ---
  // Geography (Nepal) - 4 questions
  Question(
    question: "नेपालको राजधानी कहाँ हो?",
    questionEnglish: "What is the capital of Nepal?",
    options: ["पोखरा", "काठमाडौं", "धरान", "विराटनगर"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "नेपालमा कति प्रदेश छन्?",
    questionEnglish: "How many provinces are there in Nepal?",
    options: ["५", "६", "७", "८"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "नेपालको राष्ट्रिय फूल कुन हो?",
    questionEnglish: "What is the national flower of Nepal?",
    options: ["गुलाब", "लालीगुराँस", "सयपत्री", "चमेली"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Geography (Nepal)", // Also fits Culture
  ),
  Question(
    question: "नेपालको सबैभन्दा ठूलो नदी कुन हो?",
    questionEnglish: "What is the largest river in Nepal?",
    options: ["कोशी", "गण्डकी", "कर्णाली", "बागमती"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Geography (Nepal)",
  ),

  // Science - 4 questions
  Question(
    question: "सूर्य कताबाट उदाउँछ?",
    questionEnglish: "From which direction does the sun rise?",
    options: ["पश्चिम", "पूर्व", "उत्तर", "दक्षिण"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Science",
  ),
  Question(
    question: "मानिसले सास फेर्न कुन ग्यास लिन्छ?",
    questionEnglish: "Which gas do humans breathe in?",
    options: ["कार्बन डाइअक्साइड", "नाइट्रोजन", "अक्सिजन", "हाइड्रोजन"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Science",
  ),
  Question(
    question: "पानीको रासायनिक सूत्र के हो?",
    questionEnglish: "What is the chemical formula for water?",
    options: ["CO2", "O2", "H2O", "N2"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Science",
  ),
  Question(
    question: "रुखले कुन ग्यास लिन्छ?",
    questionEnglish: "Which gas do trees take in?",
    options: ["अक्सिजन", "नाइट्रोजन", "कार्बन डाइअक्साइड", "हाइड्रोजन"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Science",
  ),

  // Math - 2 questions
  Question(
    question: "५ + ७ कति हुन्छ?",
    questionEnglish: "What is 5 + 7?",
    options: ["११", "१२", "१३", "१४"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Math",
  ),
  Question(
    question: "१० - ४ कति हुन्छ?",
    questionEnglish: "What is 10 - 4?",
    options: ["५", "६", "७", "८"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Math",
  ),

  // Culture - 2 questions
  Question(
    question: "नेपालको राष्ट्रिय जनावर कुन हो?",
    questionEnglish: "What is the national animal of Nepal?",
    options: ["बाघ", "हात्ती", "गाई", "चितुवा"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Culture",
  ),
  Question(
    question: "नेपालको राष्ट्रिय गानका रचयिता को हुन्?",
    questionEnglish: "Who is the composer of Nepal's national anthem?",
    options: [
      "लक्ष्मीप्रसाद देवकोटा",
      "गोपालप्रसाद रिमाल",
      "प्रदीपकुमार राई",
      "व्याकुल माइला",
    ],
    correctAnswerIndex: 3,
    gameLevel: 1,
    category: "Culture",
  ),

  // Technology - 2 questions
  Question(
    question: "कम्प्युटरको मुख्य भाग के हो?",
    questionEnglish: "What is the main part of a computer?",
    options: ["माउस", "किबोर्ड", "सिपियु", "मोनिटर"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Technology",
  ),
  Question(
    question: "एप्पल कम्पनीको लोगोमा के हुन्छ?",
    questionEnglish: "What is on the logo of Apple company?",
    options: ["सुन्तला", "स्याउ", "केरा", "अंगूर"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Technology",
  ),

  // Social - 2 questions
  Question(
    question: "कस्तो व्यवहारले सामाजिक मेलमिलाप बढाउँछ?",
    questionEnglish: "What kind of behavior promotes social harmony?",
    options: ["झगडा", "सहयोग", "द्वेष", "लोभ"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Social",
  ),
  Question(
    question: "विद्यालयमा किन जानुपर्छ?",
    questionEnglish: "Why should one go to school?",
    options: ["खेल्न", "घुम्न", "पढ्न", "सुत्न"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Social",
  ),

  // History (Nepal) - 2 questions
  Question(
    question: "नेपालको झण्डामा कति कोणहरू छन्?",
    questionEnglish: "How many angles are there in Nepal's flag?",
    options: ["२", "३", "४", "५"],
    correctAnswerIndex:
        1, // While geometrically it has more, it's typically described as two triangles. Let's make it easy and stick to the common perception of 'sides' or 'points'. If the question implies geometric vertices, it's more complex. For Level 1, simplify.
    gameLevel: 1,
    category: "History (Nepal)", // Also Culture
  ),
  Question(
    question: "नेपालको राष्ट्रिय रंग कुन हो?",
    questionEnglish: "What is the national color of Nepal?",
    options: ["रातो", "हरियो", "निलो", "सेतो"],
    correctAnswerIndex: 0,
    gameLevel: 1,
    category: "History (Nepal)", // Also Culture
  ),

  // Geography (World) - 2 questions
  Question(
    question: "विश्वको सबैभन्दा ठूलो महादेश कुन हो?",
    questionEnglish: "Which is the largest continent in the world?",
    options: ["अफ्रिका", "युरोप", "एसिया", "उत्तर अमेरिका"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Geography (World)",
  ),
  Question(
    question: "विश्वको सबैभन्दा ठूलो महासागर कुन हो?",
    questionEnglish: "Which is the largest ocean in the world?",
    options: [
      "आन्ध्र महासागर",
      "हिन्द महासागर",
      "प्रशान्त महासागर",
      "आर्कटिक महासागर",
    ],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Geography (World)",
  ),

  // Education - 2 questions
  Question(
    question: "कस्तो बानीले पढाइमा राम्रो बनाउँछ?",
    questionEnglish: "What habit makes one better at studies?",
    options: ["नियमित अभ्यास", "टिभी हेर्ने", "सुत्ने", "बाहिर घुम्ने"],
    correctAnswerIndex: 0,
    gameLevel: 1,
    category: "Education",
  ),
  Question(
    question: "शिक्षकले के गर्छन्?",
    questionEnglish: "What does a teacher do?",
    options: ["खेल्छन्", "सिकाउँछन्", "सुत्छन्", "खाउँछन्"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Education",
  ),

  // Sports (Nepal and World) - 4 questions
  Question(
    question: "फुटबल खेलमा कति खेलाडी हुन्छन् (एक टोलीमा)?",
    questionEnglish:
        "How many players are there in a football game (per team)?",
    options: ["९", "१०", "११", "१२"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Sports (World)",
  ),
  Question(
    question: "नेपालको राष्ट्रिय खेल कुन हो?",
    questionEnglish: "What is the national sport of Nepal?",
    options: ["फुटबल", "क्रिकेट", "भलिबल", "कबड्डी"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Sports (Nepal)",
  ),
  Question(
    question: "विश्व प्रसिद्ध खेलाडी मेस्सी कुन खेल खेल्छन्?",
    questionEnglish: "Which sport does world-famous player Messi play?",
    options: ["बास्केटबल", "क्रिकेट", "फुटबल", "टेनिस"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Sports (World)",
  ),
  Question(
    question: "कुन खेल रकेट र बल प्रयोग गरेर खेलिन्छ?",
    questionEnglish: "Which game is played using a racket and a ball?",
    options: ["फुटबल", "बास्केटबल", "टेबल टेनिस", "भलिबल"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Sports (World)",
  ),

  // IQ - 4 questions
  Question(
    question: "यदि आज सोमबार हो भने, भोलि कुन बार हुन्छ?",
    questionEnglish: "If today is Monday, what day is tomorrow?",
    options: ["मंगलबार", "बुधबार", "बिहीबार", "शुक्रबार"],
    correctAnswerIndex: 0,
    gameLevel: 1,
    category: "IQ",
  ),
  Question(
    question: "म पानी बिना बाँच्न सक्छु, तर प्रकाश बिना मर्छु। म को हुँ?",
    questionEnglish:
        "I can live without water, but I die without light. Who am I?",
    options: ["माछा", "बोटबिरुवा", "जनावर", "मानिस"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "IQ",
  ),
  Question(
    question: "मेरो धेरै मुटु छ, तर मलाई प्रेम गर्न सक्दिन। म को हुँ?",
    questionEnglish: "I have many hearts, but I cannot love. Who am I?",
    options: ["मानिस", "चरा", "एक प्याक कार्ड", "कम्प्युटर"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "IQ",
  ),
  Question(
    question: "म सधैँ आउँछु तर कहिल्यै आउँदिन। म को हुँ?",
    questionEnglish: "I am always coming but never arrive. Who am I?",
    options: ["हिजो", "आज", "भोलि", "अहिले"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "IQ",
  ),

  // Religion - 2 questions
  Question(
    question: "नेपालमा कुन चाडमा देउसी भैलो खेलिन्छ?",
    questionEnglish: "During which festival is Deusi Bhailo played in Nepal?",
    options: ["दशैँ", "तीज", "होली", "तिहार"],
    correctAnswerIndex: 3,
    gameLevel: 1,
    category: "Religion",
  ),
  Question(
    question: "हिन्दु धर्ममा सबैभन्दा ठूलो चाड कुन हो?",
    questionEnglish: "What is the biggest festival in Hinduism?",
    options: ["होली", "दशैँ", "छठ", "माघे संक्रान्ति"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Religion",
  ),

  // Language - 2 questions
  Question(
    question: "नेपालको राष्ट्रिय भाषा कुन हो?",
    questionEnglish: "What is the national language of Nepal?",
    options: ["मैथिली", "भोजपुरी", "नेपाली", "नेवारी"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Language",
  ),
  Question(
    question: "'नमस्ते' शब्दले के जनाउँछ?",
    questionEnglish: "What does the word 'Namaste' signify?",
    options: ["बिदाइ", "स्वागत", "धन्यवाद", "प्रणाम"],
    correctAnswerIndex: 3,
    gameLevel: 1,
    category: "Language",
  ),

  // Others - 6 questions
  Question(
    question: "पानीको रंग कस्तो हुन्छ?",
    questionEnglish: "What color is water?",
    options: ["निलो", "हरियो", "सेतो", "रंगहीन"],
    correctAnswerIndex: 3,
    gameLevel: 1,
    category: "Others",
  ),
  Question(
    question: "रुखबाट के पाउँछौं?",
    questionEnglish: "What do we get from trees?",
    options: ["मासु", "अण्डा", "फलफूल", "पानी"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Others",
  ),
  Question(
    question: "कुन जनावरलाई 'मरुभूमिको जहाज' भनिन्छ?",
    questionEnglish: "Which animal is called the 'ship of the desert'?",
    options: ["घोडा", "ऊँट", "हात्ती", "जेब्रा"],
    correctAnswerIndex: 1,
    gameLevel: 1,
    category: "Others",
  ),
  Question(
    question: "हामीले सुत्न के प्रयोग गर्छौं?",
    questionEnglish: "What do we use to sleep?",
    options: ["टेबल", "कुर्सी", "ओछ्यान", "भान्सा"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Others",
  ),
  Question(
    question: "मानव शरीरमा कति औँला हुन्छन् (दुवै हातमा)?",
    questionEnglish:
        "How many fingers are there in the human body (on both hands)?",
    options: ["८", "९", "१०", "१२"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Others",
  ),
  Question(
    question: "खाना खान कुन इन्द्रिय प्रयोग गर्छौं?",
    questionEnglish: "Which sense organ do we use to eat?",
    options: ["कान", "आँखा", "मुख", "नाक"],
    correctAnswerIndex: 2,
    gameLevel: 1,
    category: "Others",
  ),

  // --- Game Level 2 (40 Questions - Easy to Medium) ---
  // History (Nepal) - 4 questions
  Question(
    question: "नेपालको पहिलो राजा को थिए?",
    questionEnglish: "Who was the first king of Nepal?",
    options: ["पृथ्वीनारायण शाह", "द्रव्य शाह", "राम शाह", "अंशुवर्मा"],
    correctAnswerIndex:
        1, // द्रव्य शाह is generally considered the founder of the unified Gorkha Kingdom, which later became Nepal.
    gameLevel: 2,
    category: "History (Nepal)",
  ),
  Question(
    question: "मल्लकालीन नेपालको राजधानी कहाँ थियो?",
    questionEnglish: "Where was the capital of Malla period Nepal?",
    options: ["कीर्तिपुर", "भक्तपुर", "पाटन", "तीनवटै"],
    correctAnswerIndex: 3, // They were separate kingdoms.
    gameLevel: 2,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको एकीकरण अभियान कसले सुरु गरे?",
    questionEnglish: "Who started the unification campaign of Nepal?",
    options: ["वीर शमशेर", "जंगबहादुर राणा", "पृथ्वीनारायण शाह", "भीमसेन थापा"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको पहिलो शहीद कसलाई मानिन्छ?",
    questionEnglish: "Who is considered the first martyr of Nepal?",
    options: ["दशरथ चन्द", "शुक्रराज शास्त्री", "गंगालाल श्रेष्ठ", "लखन थापा"],
    correctAnswerIndex: 3,
    gameLevel: 2,
    category: "History (Nepal)",
  ),

  // Geography (Nepal) - 4 questions
  Question(
    question: "विश्वको सबैभन्दा अग्लो चुचुरो कुन हो?",
    questionEnglish: "What is the highest peak in the world?",
    options: ["कञ्चनजङ्घा", "लोत्से", "मकालु", "सगरमाथा"],
    correctAnswerIndex: 3,
    gameLevel: 2,
    category: "Geography (World)",
  ),
  Question(
    question: "फेवा ताल कुन शहरमा अवस्थित छ?",
    questionEnglish: "In which city is Phewa Lake located?",
    options: ["धरान", "विराटनगर", "पोखरा", "चितवन"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "नेपालको सबैभन्दा ठूलो राष्ट्रिय निकुञ्ज कुन हो?",
    questionEnglish: "What is the largest national park in Nepal?",
    options: [
      "चितवन राष्ट्रिय निकुञ्ज",
      "सगरमाथा राष्ट्रिय निकुञ्ज",
      "शे-फोक्सुण्डो राष्ट्रिय निकुञ्ज",
      "लाङटाङ राष्ट्रिय निकुञ्ज",
    ],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "बुद्धको जन्मस्थल लुम्बिनी नेपालको कुन प्रदेशमा पर्छ?",
    questionEnglish:
        "In which province of Nepal is Buddha's birthplace Lumbini located?",
    options: ["गण्डकी", "बागमती", "लुम्बिनी", "मधेश"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Geography (Nepal)",
  ),

  // Science - 4 questions
  Question(
    question: "चराले के प्रयोग गरेर उड्छ?",
    questionEnglish: "What do birds use to fly?",
    options: ["खुट्टा", "पखेटा", "पुच्छर", "चुचो"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Science",
  ),
  Question(
    question: "मानव शरीरमा कति हड्डी हुन्छन्?",
    questionEnglish: "How many bones are there in the human body?",
    options: ["२००", "२०६", "२१०", "२१५"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Science",
  ),
  Question(
    question: "प्रकाशको गति कति हुन्छ (लगभग)?",
    questionEnglish: "What is the speed of light (approximately)?",
    options: [
      "३ लाख किलोमिटर प्रति सेकेन्ड",
      "३ हजार किलोमिटर प्रति सेकेन्ड",
      "३० किलोमिटर प्रति सेकेन्ड",
      "३ सय किलोमिटर प्रति सेकेन्ड",
    ],
    correctAnswerIndex: 0,
    gameLevel: 2,
    category: "Science",
  ),
  Question(
    question: "कुन ग्रहलाई 'रातो ग्रह' भनिन्छ?",
    questionEnglish: "Which planet is known as the 'Red Planet'?",
    options: ["शुक्र", "मंगल", "बृहस्पति", "शनि"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Science",
  ),

  // Math - 2 questions
  Question(
    question: "५ * ५ कति हुन्छ?",
    questionEnglish: "What is 5 * 5?",
    options: ["२०", "२५", "३०", "३५"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Math",
  ),
  Question(
    question: "२० / ४ कति हुन्छ?",
    questionEnglish: "What is 20 / 4?",
    options: ["४", "५", "६", "७"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Math",
  ),

  // Culture - 2 questions
  Question(
    question: "नेपालको राष्ट्रिय पोशाक के हो?",
    questionEnglish: "What is the national dress of Nepal?",
    options: ["सुट", "दौरा सुरुवाल र गुन्यु चोली", "जिन्स", "साडी"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Culture",
  ),
  Question(
    question: "नेपालमा 'गाईजात्रा' कुन शहरमा विशेष गरी मनाइन्छ?",
    questionEnglish:
        "In which city is 'Gai Jatra' specially celebrated in Nepal?",
    options: ["पोखरा", "ललितपुर", "काठमाडौं", "भरतपुर"],
    correctAnswerIndex:
        2, // Kathmandu valley cities, but Kathmandu is often the focus.
    gameLevel: 2,
    category: "Culture",
  ),

  // Technology - 2 questions
  Question(
    question: "कम्प्युटरमा 'कपी' गर्न कुन कुञ्जी (key) प्रयोग गरिन्छ?",
    questionEnglish: "Which key is used to 'copy' in a computer?",
    options: ["Ctrl + C", "Ctrl + V", "Ctrl + S", "Ctrl + X"],
    correctAnswerIndex: 0,
    gameLevel: 2,
    category: "Technology",
  ),
  Question(
    question: "इन्टरनेट प्रयोग गर्न के आवश्यक पर्छ?",
    questionEnglish: "What is required to use the internet?",
    options: ["टिभी", "कम्प्युटर/मोबाइल र इन्टरनेट पहुँच", "रेडियो", "पुस्तक"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Technology",
  ),

  // Social - 2 questions
  Question(
    question: "प्रजातान्त्रिक शासन प्रणालीमा शक्ति कहाँ निहित हुन्छ?",
    questionEnglish: "Where does power lie in a democratic system?",
    options: ["राजामा", "सेनामा", "जनतामा", "केही व्यक्तिमा"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Social",
  ),
  Question(
    question:
        "बालबालिकाको अधिकारको संरक्षण गर्न कसले महत्त्वपूर्ण भूमिका खेल्छ?",
    questionEnglish:
        "Who plays an important role in protecting children's rights?",
    options: ["सरकार", "अभिभावक", "विद्यालय", "माथिका सबै"],
    correctAnswerIndex: 3,
    gameLevel: 2,
    category: "Social",
  ),

  // History (World) - 2 questions
  Question(
    question: "कुन देशमा पिरामिडहरू छन्?",
    questionEnglish: "Which country has pyramids?",
    options: ["भारत", "इजिप्ट", "चीन", "अमेरिका"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "History (World)", // Also Geography
  ),
  Question(
    question: "चिनियाँ ठूलो पर्खाल (Great Wall of China) कुन देशमा छ?",
    questionEnglish: "In which country is the Great Wall of China?",
    options: ["जापान", "भारत", "चीन", "कोरिया"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "History (World)", // Also Geography
  ),

  // Education - 2 questions
  Question(
    question: "विश्व साक्षरता दिवस कहिले मनाइन्छ?",
    questionEnglish: "When is World Literacy Day celebrated?",
    options: ["सेप्टेम्बर ५", "सेप्टेम्बर ८", "अक्टोबर २", "अक्टोबर ५"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Education",
  ),
  Question(
    question: "ज्ञानको लागि के आवश्यक छ?",
    questionEnglish: "What is necessary for knowledge?",
    options: ["अहंकार", "कठोरता", "सीखने इच्छा", "अज्ञानता"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Education",
  ),

  // Sports (Nepal and World) - 4 questions
  Question(
    question: "विश्व प्रसिद्ध टेनिस खेलाडी रोजर फेडरर कुन देशका हुन्?",
    questionEnglish:
        "Which country is world-famous tennis player Roger Federer from?",
    options: ["अमेरिका", "स्पेन", "स्विट्जरल्याण्ड", "सर्बिया"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Sports (World)",
  ),
  Question(
    question: "बास्केटबल खेलमा प्रति टोली कति खेलाडी मैदानमा हुन्छन्?",
    questionEnglish:
        "How many players are on the court per team in a basketball game?",
    options: ["४", "५", "६", "७"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Sports (World)",
  ),
  Question(
    question: "ओलम्पिक खेलहरू कति वर्षमा हुन्छन्?",
    questionEnglish: "How often do the Olympic Games take place?",
    options: ["२ वर्ष", "३ वर्ष", "४ वर्ष", "५ वर्ष"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Sports (World)",
  ),
  Question(
    question: "कुन खेलमा 'चेकमेट' (Checkmate) शब्द प्रयोग हुन्छ?",
    questionEnglish: "In which game is the term 'Checkmate' used?",
    options: ["फुटबल", "क्रिकेट", "शतरंज", "बास्केटबल"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Sports (World)",
  ),

  // IQ - 4 questions
  Question(
    question:
        "यदि एउटा रेल ५० किमी/घण्टाको गतिमा पूर्वतिर गइरहेको छ र हावा पश्चिमबाट १० किमी/घण्टाको गतिमा बगिरहेको छ भने, धुवाँ कतातिर जान्छ?",
    questionEnglish:
        "If a train is moving east at 50 km/h and the wind is blowing from the west at 10 km/h, where does the smoke go?",
    options: ["पूर्व", "पश्चिम", "माथि", "रेलमार्गमा"],
    correctAnswerIndex: 3, // Electric train, no smoke.
    gameLevel: 2,
    category: "IQ",
  ),
  Question(
    question:
        "मेरो अगाडि हजारौं साथी छन्, तर म तिनीहरूलाई देख्न सक्दिनँ। म को हुँ?",
    questionEnglish:
        "I have thousands of friends in front of me, but I can't see them. Who am I?",
    options: ["किताब", "ऐना", "आकाश", "तारा"],
    correctAnswerIndex: 3,
    gameLevel: 2,
    category: "IQ",
  ),
  Question(
    question:
        "तपाईंले जे सोच्नुहुन्छ, त्यो म होइन; तपाईंले जे सुन्नुहुन्छ, त्यो म होइन। म को हुँ?",
    questionEnglish:
        "What you think, I am not; what you hear, I am not. Who am I?",
    options: ["आवाज", "चुपचाप", "शब्द", "विचार"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "IQ",
  ),
  Question(
    question: "म बिहान उठ्छु र रातमा सुत्छु। म को हुँ?",
    questionEnglish: "I wake up in the morning and sleep at night. Who am I?",
    options: ["सूर्य", "चन्द्रमा", "तारा", "मानिस"],
    correctAnswerIndex: 3,
    gameLevel: 2,
    category: "IQ",
  ),

  // Religion - 2 questions
  Question(
    question: "क्रिश्चियन धर्मको पवित्र ग्रन्थ कुन हो?",
    questionEnglish: "What is the holy book of Christianity?",
    options: ["वेद", "कुरान", "बाइबल", "त्रिपिटक"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Religion",
  ),
  Question(
    question: "इस्लाम धर्मको पवित्र ग्रन्थ कुन हो?",
    questionEnglish: "What is the holy book of Islam?",
    options: ["बाइबल", "गीता", "कुरान", "वेद"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Religion",
  ),

  // Language - 2 questions
  Question(
    question: "'शुभकामना' शब्दको अर्थ के हो?",
    questionEnglish: "What is the meaning of the word 'Shubhakamana'?",
    options: ["खराब इच्छा", "राम्रो इच्छा", "डर", "रिस"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Language",
  ),
  Question(
    question: "'पुस्तक' शब्दको अंग्रेजी अर्थ के हो?",
    questionEnglish: "What is the English meaning of the word 'Pustak'?",
    options: ["पेन", "बुक", "टेबल", "कुर्सी"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Language",
  ),

  // Others - 6 questions
  Question(
    question: "हाम्रो राष्ट्रिय गान कुन समयमा बजाइन्छ?",
    questionEnglish: "When is our national anthem played?",
    options: ["साँझमा", "बिहानमा", "विशेष अवसरमा", "जहिले पनि"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Others",
  ),
  Question(
    question: "कुन जनावरले अण्डा पार्छ र बच्चालाई दूध खुवाउँछ?",
    questionEnglish: "Which animal lays eggs and feeds milk to its young?",
    options: ["गाई", "कुकुर", "प्लाटिपस", "हाँस"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Others",
  ),
  Question(
    question: "हाम्रो शरीरको कुन भागले रगत पम्प गर्छ?",
    questionEnglish: "Which part of our body pumps blood?",
    options: ["दिमाग", "मिर्गौला", "मुटु", "फोक्सो"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Others",
  ),
  Question(
    question: "कुन मौसममा हामी तातो कपडा लगाउँछौं?",
    questionEnglish: "In which season do we wear warm clothes?",
    options: ["गर्मी", "जाडो", "बर्षा", "वसन्त"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Others",
  ),
  Question(
    question: "नेपालको समय मानक कुन शिखरको आधारमा तय गरिएको छ?",
    questionEnglish: "Nepal's standard time is set based on which peak?",
    options: ["सगरमाथा", "लाङटाङ", "गौरीशंकर", "अन्नपूर्ण"],
    correctAnswerIndex: 2,
    gameLevel: 2,
    category: "Others",
  ),
  Question(
    question: "हामीले हेर्न कुन इन्द्रिय प्रयोग गर्छौं?",
    questionEnglish: "Which sense organ do we use to see?",
    options: ["कान", "आँखा", "नाक", "जिब्रो"],
    correctAnswerIndex: 1,
    gameLevel: 2,
    category: "Others",
  ),

  // --- Game Level 3 (40 Questions - Medium) ---
  // History (Nepal) - 4 questions
  Question(
    question: "नेपालमा राणा शासनको अन्त्य कहिले भयो (विक्रम संवतमा)?",
    questionEnglish:
        "When did the Rana regime end in Nepal (in Bikram Sambat)?",
    options: ["२००६", "२००७", "२००८", "२००९"],
    correctAnswerIndex: 1, // Falgun 7, 2007 BS
    gameLevel: 3,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालमा जनआन्दोलन २०४६ को मुख्य उपलब्धि के थियो?",
    questionEnglish:
        "What was the main achievement of the People's Movement 2046 in Nepal?",
    options: [
      "गणतन्त्र स्थापना",
      "बहुदलीय प्रजातन्त्रको पुनर्बहाली",
      "राजतन्त्रको सुदृढीकरण",
      "निरंकुश शासनको स्थापना",
    ],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको पहिलो महिला प्रधानमन्त्री को हुन्?",
    questionEnglish: "Who is the first female Prime Minister of Nepal?",
    options: [
      "विद्यादेवी भण्डारी",
      "सुजाता कोइराला",
      "शैलजा आचार्य",
      "नेपालमा महिला प्रधानमन्त्री भएकै छैनन्",
    ],
    correctAnswerIndex: 3, // Nepal has not had a female PM yet.
    gameLevel: 3,
    category: "History (Nepal)",
  ),
  Question(
    question:
        "लिच्छवी कालका प्रसिद्ध राजा मानदेव प्रथमले कुन मुद्रा चलाएका थिए?",
    questionEnglish:
        "Which currency did King Manadev I, a famous king of the Lichhavi period, introduce?",
    options: ["दाम", "पशुपति मुद्रा", "गुणाङ्क", "मानाङ्क"],
    correctAnswerIndex: 3,
    gameLevel: 3,
    category: "History (Nepal)",
  ),

  // Geography (Nepal) - 4 questions
  Question(
    question: "नेपालको कुन जिल्लालाई 'चियाको जिल्ला' भनिन्छ?",
    questionEnglish:
        "Which district of Nepal is known as the 'district of tea'?",
    options: ["झापा", "इलाम", "धनकुटा", "पाँचथर"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "नेपालको नक्सामा 'तराई' क्षेत्र कुन दिशामा पर्छ?",
    questionEnglish:
        "In which direction does the 'Terai' region lie on the map of Nepal?",
    options: ["उत्तर", "दक्षिण", "पूर्व", "पश्चिम"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "नेपालको कुन हिमाललाई 'सप्तकोशीको मुहान' भनिन्छ?",
    questionEnglish:
        "Which mountain in Nepal is called the 'source of Saptakoshi'?",
    options: ["गणेश हिमाल", "लाङटाङ", "जुगल हिमाल", "गौरीशंकर"],
    correctAnswerIndex: 3,
    gameLevel: 3,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "नेपालको 'मुस्ताङ' जिल्ला कुन क्षेत्रमा पर्छ?",
    questionEnglish:
        "In which region of Nepal is the 'Mustang' district located?",
    options: ["तराई", "पहाड", "हिमाल", "उपत्यका"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Geography (Nepal)",
  ),

  // Science - 4 questions
  Question(
    question: "ओजोन तहले पृथ्वीलाई कुन किरणबाट बचाउँछ?",
    questionEnglish: "Which rays does the ozone layer protect the Earth from?",
    options: ["गामा किरण", "पराबैजनी किरण", "एक्स-रे", "अवरक्त किरण"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Science",
  ),
  Question(
    question: "गुरुत्वाकर्षणको सिद्धान्त कसले पत्ता लगाएका हुन्?",
    questionEnglish: "Who discovered the theory of gravity?",
    options: [
      "अल्बर्ट आइन्स्टाइन",
      "आइज्याक न्युटन",
      "ग्यालिलियो ग्यालिली",
      "स्टीफन हकिङ",
    ],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Science",
  ),
  Question(
    question: "ध्वनि नाप्ने एकाइ के हो?",
    questionEnglish: "What is the unit for measuring sound?",
    options: ["एम्पियर", "भोल्ट", "हर्ट्ज", "डेसिबल"],
    correctAnswerIndex: 3,
    gameLevel: 3,
    category: "Science",
  ),
  Question(
    question: "मानव मस्तिष्कको सबैभन्दा ठूलो भाग कुन हो?",
    questionEnglish: "What is the largest part of the human brain?",
    options: ["सेरिबेलम", "सेरिब्रम", "मेड्युला ओबलोन्गाटा", "पोनस"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Science",
  ),

  // Math - 2 questions
  Question(
    question: "एउटा त्रिभुजको तीन कोणको योगफल कति हुन्छ?",
    questionEnglish: "What is the sum of the three angles of a triangle?",
    options: ["९० डिग्री", "१०० डिग्री", "१८० डिग्री", "३६० डिग्री"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Math",
  ),
  Question(
    question: "पाइथागोरस प्रमेय कुन विषयसँग सम्बन्धित छ?",
    questionEnglish: "Which subject is related to the Pythagorean theorem?",
    options: ["रसायनशास्त्र", "भौतिकशास्त्र", "गणित", "जीवविज्ञान"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Math",
  ),

  // Culture - 2 questions
  Question(
    question: "नेपालको कुन जातिका मानिसहरू 'लक्सा' नृत्यका लागि प्रसिद्ध छन्?",
    questionEnglish:
        "Which ethnic group in Nepal is famous for the 'Lakhe' dance?",
    options: ["गुरुङ", "नेवार", "मगर", "तामाङ"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Culture",
  ),
  Question(
    question: "नेपालमा 'घण्टाघर' कुन शहरमा अवस्थित छ?",
    questionEnglish: "In which city is 'Ghantaghar' located in Nepal?",
    options: ["पोखरा", "ललितपुर", "काठमाडौं", "धरान"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Culture",
  ),

  // Technology - 2 questions
  Question(
    question: "इन्टरनेटको आविष्कारक को हुन्?",
    questionEnglish: "Who is the inventor of the internet?",
    options: ["बिल गेट्स", "स्टीभ जब्स", "टिम बर्नर्स-ली", "ल्यारी पेज"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Technology",
  ),
  Question(
    question: "फेसबुकका संस्थापक को हुन्?",
    questionEnglish: "Who is the founder of Facebook?",
    options: ["बिल गेट्स", "स्टीभ जब्स", "मार्क जुकरबर्ग", "एलन मस्क"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Technology",
  ),

  // Social - 2 questions
  Question(
    question: "नेपालमा 'भूकम्प सुरक्षा दिवस' कहिले मनाइन्छ?",
    questionEnglish: "When is 'Earthquake Safety Day' celebrated in Nepal?",
    options: ["माघ १", "माघ २", "माघ ३", "माघ ४"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Social",
  ),
  Question(
    question: "समाजमा 'लैंगिक समानता' (Gender Equality) ले के बुझाउँछ?",
    questionEnglish: "What does 'Gender Equality' mean in society?",
    options: [
      "महिला मात्रको अधिकार",
      "पुरुष मात्रको अधिकार",
      "सबै लिङ्गका व्यक्तिहरूलाई समान अवसर र अधिकार",
      "महिला र पुरुष बीचको भिन्नता",
    ],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Social",
  ),

  // History (World) - 2 questions
  Question(
    question: "प्रथम विश्वयुद्ध कहिले सुरु भयो?",
    questionEnglish: "When did World War I begin?",
    options: ["सन् १९१०", "सन् १९१४", "सन् १९१८", "सन् १९३९"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "History (World)",
  ),
  Question(
    question: "द्वितीय विश्वयुद्ध कहिले अन्त्य भयो?",
    questionEnglish: "When did World War II end?",
    options: ["सन् १९४०", "सन् १९४२", "सन् १९४५", "सन् १९५०"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "History (World)",
  ),

  // Education - 2 questions
  Question(
    question: "स्वस्थ जीवनका लागि के महत्वपूर्ण छ?",
    questionEnglish: "What is important for a healthy life?",
    options: [
      "अस्वस्थ खाना",
      "नियमित व्यायाम",
      "राती अबेर सुत्ने",
      "अध्ययन नगर्ने",
    ],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Education",
  ),
  Question(
    question: "सूचना प्रविधि (Information Technology) को मुख्य उद्देश्य के हो?",
    questionEnglish: "What is the main objective of Information Technology?",
    options: [
      "मनोरञ्जन प्रदान गर्ने",
      "सूचना व्यवस्थापन र प्रशोधन गर्ने",
      "खेल खेल्ने",
      "खाना बनाउने",
    ],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Education",
  ),

  // Sports (Nepal and World) - 4 questions
  Question(
    question: "विश्वको सबैभन्दा ठूलो खेल महोत्सव कुन हो?",
    questionEnglish: "What is the world's largest sports festival?",
    options: [
      "एसियाली खेलकुद",
      "राष्ट्रिय खेलकुद",
      "ओलम्पिक खेलकुद",
      "साफ खेलकुद",
    ],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Sports (World)",
  ),
  Question(
    question:
        "नेपाली क्रिकेट टोलीले पहिलो एकदिवसीय अन्तर्राष्ट्रिय (ODI) मान्यता कहिले प्राप्त गर्यो?",
    questionEnglish:
        "When did the Nepali cricket team first gain One Day International (ODI) status?",
    options: ["२०१४", "२०१५", "२०१८", "२०२०"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Sports (Nepal)",
  ),
  Question(
    question: "कुन खेलमा 'नो-बल' (No-ball) र 'वाइड' (Wide) शब्द प्रयोग हुन्छ?",
    questionEnglish: "In which game are 'No-ball' and 'Wide' terms used?",
    options: ["फुटबल", "बास्केटबल", "क्रिकेट", "भलिबल"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Sports (World)",
  ),
  Question(
    question: "विश्व कप फुटबल कति वर्षमा आयोजना हुन्छ?",
    questionEnglish: "How often is the FIFA World Cup held?",
    options: ["२ वर्ष", "३ वर्ष", "४ वर्ष", "५ वर्ष"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Sports (World)",
  ),

  // IQ - 4 questions
  Question(
    question:
        "यदि सबै कुखुराहरू हाँस हुन् र सबै हाँसहरू बकुल्ला हुन् भने, सबै कुखुराहरू के हुन्?",
    questionEnglish:
        "If all chickens are ducks and all ducks are herons, then what are all chickens?",
    options: ["कुखुरा", "हाँस", "बकुल्ला", "जनावर"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "IQ",
  ),
  Question(
    question:
        "म कालो हुँ जब तिमीले मलाई किन्छौ, रातो जब तिमीले मलाई प्रयोग गर्छौ, र खैरो जब तिमीले मलाई फाल्छौ। म को हुँ?",
    questionEnglish:
        "I am black when you buy me, red when you use me, and gray when you throw me away. Who am I?",
    options: ["कोइला", "चक्कु", "पेन्सिल", "चिया पत्ती"],
    correctAnswerIndex: 0,
    gameLevel: 3,
    category: "IQ",
  ),
  Question(
    question: "कुन कुरा जति धेरै लिन्छौ, त्यति नै पछाडि छोड्छौ?",
    questionEnglish:
        "The more you take, the more you leave behind. What is it?",
    options: ["पैसा", "पानी", "पदचिह्न", "सास"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "IQ",
  ),
  Question(
    question:
        "एउटा मान्छेले आफ्नो घरबाट सुरु गरी ३ किमी उत्तर, ३ किमी पूर्व, ३ किमी दक्षिण हिँड्छ र आफ्नो घर फर्कन्छ। यो कुन जनावरको घर हो?",
    questionEnglish:
        "A man starts from his house, walks 3 km north, 3 km east, 3 km south, and returns to his house. Whose house is this?",
    options: ["बकुल्ला", "भालु (ध्रुवीय भालु)", "बाघ", "सिंघ"],
    correctAnswerIndex:
        1, // This is a classic riddle answer. If he returns to the exact spot, he must be at the North Pole, and therefore saw a polar bear.
    gameLevel: 3,
    category: "IQ",
  ),

  // Religion - 2 questions
  Question(
    question: "बुद्ध धर्मका संस्थापक को हुन्?",
    questionEnglish: "Who is the founder of Buddhism?",
    options: ["महावीर", "सिद्धार्थ गौतम", "गुरु नानक", "जरथुष्ट्र"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Religion",
  ),
  Question(
    question: "हिन्दु धर्ममा 'त्रिदेव' भनेर कसलाई चिनिन्छ?",
    questionEnglish: "Who are known as 'Trimurti' (Trinity) in Hinduism?",
    options: [
      "राम, सीता, लक्ष्मण",
      "कृष्ण, राधा, बलराम",
      "ब्रह्मा, विष्णु, महेश",
      "इन्द्र, अग्नि, वायु",
    ],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Religion",
  ),

  // Language - 2 questions
  Question(
    question: "'पर्यायवाची' शब्दको अर्थ के हो?",
    questionEnglish:
        "What is the meaning of the word 'Paryayawachi' (Synonym)?",
    options: ["विपरीत अर्थ", "समान अर्थ", "नयाँ अर्थ", "अस्पष्ट अर्थ"],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Language",
  ),
  Question(
    question: "नेपाली वर्णमालामा कतिवटा स्वर वर्ण (vowels) छन्?",
    questionEnglish: "How many vowel letters are there in the Nepali alphabet?",
    options: ["१०", "११", "१२", "१३"],
    correctAnswerIndex:
        0, // Generally considered 10: अ, आ, इ, ई, उ, ऊ, ए, ऐ, ओ, औ
    gameLevel: 3,
    category: "Language",
  ),

  // Others - 6 questions
  Question(
    question: "हाम्रो शरीरको कुन अंगले खाना पचाउँछ?",
    questionEnglish: "Which organ in our body digests food?",
    options: ["मुटु", "फोक्सो", "पेट", "दिमाग"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Others",
  ),
  Question(
    question: "अफ्रिका महादेशमा सबैभन्दा ठूलो जनावर कुन हो?",
    questionEnglish: "What is the largest animal on the continent of Africa?",
    options: ["हात्ती", "गैंडा", "जिराफ", "हिप्पो"],
    correctAnswerIndex: 0,
    gameLevel: 3,
    category: "Others",
  ),
  Question(
    question: "कम्प्युटरको 'RAM' (र्याम) को पूरा रूप के हो?",
    questionEnglish: "What is the full form of 'RAM' in a computer?",
    options: [
      "Read Access Memory",
      "Random Access Memory",
      "Rapid Application Module",
      "Remote Access Module",
    ],
    correctAnswerIndex: 1,
    gameLevel: 3,
    category: "Others", // Can also fit Technology
  ),
  Question(
    question: "विश्वको सबैभन्दा ठूलो फूल कुन हो?",
    questionEnglish: "What is the largest flower in the world?",
    options: ["गुलाब", "कमल", "रेफलेसिया अर्नोल्डी", "सूर्यमुखी"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Others",
  ),
  Question(
    question: "मानव शरीरमा सबैभन्दा सानो हड्डी कुन हो?",
    questionEnglish: "What is the smallest bone in the human body?",
    options: ["स्टेपिस", "फेमर", "टिबिया", "रेडियस"],
    correctAnswerIndex: 0,
    gameLevel: 3,
    category: "Others",
  ),
  Question(
    question: "कुन ग्यासलाई 'हाँस्ने ग्यास' (Laughing Gas) भनिन्छ?",
    questionEnglish: "Which gas is called 'Laughing Gas'?",
    options: ["अक्सिजन", "कार्बन डाइअक्साइड", "नाइट्रस अक्साइड", "हाइड्रोजन"],
    correctAnswerIndex: 2,
    gameLevel: 3,
    category: "Others", // Can also fit Science
  ),
  Question(
    question:
        "नेपालको एकीकरण अभियानमा पृथ्वीनारायण शाहले कुन राज्यलाई पहिले जितेका थिए?",
    questionEnglish:
        "Which kingdom did Prithvi Narayan Shah conquer first in his Nepal unification campaign?",
    options: ["नुवाकोट", "काठमाडौं", "भक्तपुर", "ललितपुर"],
    correctAnswerIndex: 0,
    gameLevel: 4,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालमा दास प्रथाको अन्त्य कहिले भएको थियो (विक्रम संवतमा)?",
    questionEnglish: "When was slavery abolished in Nepal (in Bikram Sambat)?",
    options: ["१९८०", "१९८१", "१९८२", "१९८३"],
    correctAnswerIndex: 0, // In 1980 BS (1923 AD) by Chandra Shumsher Rana.
    gameLevel: 4,
    category: "History (Nepal)",
  ),
  Question(
    question:
        "बाइसे-चौबीसे राज्यहरूलाई एकीकरण गरी विशाल नेपाल बनाउने कार्य कसले गरेका थिए?",
    questionEnglish:
        "Who unified the Baise-Chaubise states to form a greater Nepal?",
    options: ["जंगबहादुर राणा", "भीमसेन थापा", "अंशुवर्मा", "पृथ्वीनारायण शाह"],
    correctAnswerIndex: 3,
    gameLevel: 4,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको इतिहासमा 'अंधेरी युग' भनेर कुन काललाई चिनिन्छ?",
    questionEnglish:
        "Which period in Nepali history is known as the 'Dark Age'?",
    options: ["किरात काल", "लिच्छवी काल", "राणा काल", "मल्ल काल"],
    correctAnswerIndex:
        0, // The period between Kirat and Lichhavi is sometimes referred to as the Dark Age due to lack of clear records.
    gameLevel: 4,
    category: "History (Nepal)",
  ),

  // Geography (Nepal/World) - 4 questions
  Question(
    question: "विश्वको सबैभन्दा ठूलो मरुभूमि कुन हो?",
    questionEnglish: "What is the largest desert in the world?",
    options: [
      "सहारा मरुभूमि",
      "अन्टार्क्टिक ध्रुवीय मरुभूमि",
      "गोबी मरुभूमि",
      "अरबी मरुभूमि",
    ],
    correctAnswerIndex: 1, // Antarctic Polar Desert is technically the largest.
    gameLevel: 4,
    category: "Geography (World)",
  ),
  Question(
    question: "नेपालको 'सोलुखुम्बु' जिल्ला कुन प्रदेशमा पर्छ?",
    questionEnglish:
        "In which province of Nepal is the 'Solukhumbu' district located?",
    options: [
      "गण्डकी प्रदेश",
      "लुम्बिनी प्रदेश",
      "कोशी प्रदेश",
      "बागमती प्रदेश",
    ],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "नेपालको सबैभन्दा गहिरो ताल कुन हो?",
    questionEnglish: "What is the deepest lake in Nepal?",
    options: ["फेवा ताल", "रारा ताल", "शे-फोक्सुण्डो ताल", "तिलिचो ताल"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "जापानको सबैभन्दा अग्लो चुचुरो कुन हो?",
    questionEnglish: "What is the highest peak in Japan?",
    options: ["माउन्ट फुजी", "माउन्ट किता", "माउन्ट होटक", "माउन्ट यारी"],
    correctAnswerIndex: 0,
    gameLevel: 4,
    category: "Geography (World)",
  ),

  // Science - 4 questions
  Question(
    question: "मानव शरीरमा सबैभन्दा ठूलो अंग कुन हो?",
    questionEnglish: "What is the largest organ in the human body?",
    options: ["कलेजो", "मुटु", "छाला", "फोक्सो"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Science",
  ),
  Question(
    question: "कुन ग्यासले आगो निभाउन मद्दत गर्छ?",
    questionEnglish: "Which gas helps to extinguish fire?",
    options: ["अक्सिजन", "नाइट्रोजन", "कार्बन डाइअक्साइड", "हाइड्रोजन"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Science",
  ),
  Question(
    question:
        "विद्युत चुम्बकीय तरंग (Electromagnetic waves) को आविष्कार कसले गरेका थिए?",
    questionEnglish: "Who invented electromagnetic waves?",
    options: [
      "अल्बर्ट आइन्स्टाइन",
      "जेम्स क्लर्क म्याक्सवेल",
      "निकोल टेस्ला",
      "थोमस एडिसन",
    ],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Science",
  ),
  Question(
    question: "न्युरोनको कुन भागले सन्देश प्राप्त गर्छ?",
    questionEnglish: "Which part of a neuron receives messages?",
    options: ["एक्सन", "सेल बडी", "डेन्ड्राइट", "सिन्याप्स"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Science",
  ),

  // Math - 2 questions
  Question(
    question: "वर्गको क्षेत्रफल पत्ता लगाउने सूत्र के हो?",
    questionEnglish: "What is the formula for finding the area of a square?",
    options: [
      "लम्बाइ * चौडाइ",
      "साइड * साइड",
      "१/२ * आधार * उचाइ",
      "२ * (लम्बाइ + चौडाइ)",
    ],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Math",
  ),
  Question(
    question:
        "यदि एउटा किताबको मूल्य रु. १५० छ र तपाईंसँग रु. ५०० छ भने, कतिवटा किताब किन्न सक्नुहुन्छ?",
    questionEnglish:
        "If a book costs Rs. 150 and you have Rs. 500, how many books can you buy?",
    options: ["२", "३", "४", "५"],
    correctAnswerIndex: 1, // 500 / 150 = 3 with remainder.
    gameLevel: 4,
    category: "Math",
  ),

  // Culture - 2 questions
  Question(
    question:
        "नेपालको कुन चाडमा दिदीबहिनीले दाजुभाइलाई टीका लगाउँछन् र माला लगाइदिन्छन्?",
    questionEnglish:
        "During which festival in Nepal do sisters put Tika on their brothers and offer garlands?",
    options: ["दशैँ", "होली", "तिहार", "छठ"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Culture",
  ),
  Question(
    question: "नेपालमा मनाइने 'ल्होसार' चाड कुन समुदायसँग सम्बन्धित छ?",
    questionEnglish:
        "Which community is the 'Lhosar' festival, celebrated in Nepal, related to?",
    options: ["राई", "लिम्बु", "शेर्पा/तामाङ/गुरुङ", "थारु"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Culture",
  ),

  // Technology - 2 questions
  Question(
    question: "कम्प्युटरको स्थायी मेमोरीलाई के भनिन्छ?",
    questionEnglish: "What is the permanent memory of a computer called?",
    options: ["RAM", "ROM", "CPU", "Motherboard"],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Technology",
  ),
  Question(
    question: "वर्ल्ड वाइड वेब (WWW) को आविष्कारक को हुन्?",
    questionEnglish: "Who is the inventor of the World Wide Web (WWW)?",
    options: ["बिल गेट्स", "स्टीभ जब्स", "टिम बर्नर्स-ली", "ल्यारी पेज"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Technology",
  ),

  // Social - 2 questions
  Question(
    question:
        "बाल अधिकार सम्बन्धी संयुक्त राष्ट्रसंघीय महासन्धि (UNCRC) कहिले पारित भयो?",
    questionEnglish:
        "When was the UN Convention on the Rights of the Child (UNCRC) adopted?",
    options: ["सन् १९८९", "सन् १९९०", "सन् १९९२", "सन् १९९५"],
    correctAnswerIndex: 0,
    gameLevel: 4,
    category: "Social",
  ),
  Question(
    question: "नेपालमा 'वृद्धवृद्धा दिवस' कहिले मनाइन्छ?",
    questionEnglish: "When is 'Senior Citizens' Day' celebrated in Nepal?",
    options: ["जेठ १५", "असोज १५", "चैत १५", "भदौ १५"],
    correctAnswerIndex: 1, // Ashwin 15th
    gameLevel: 4,
    category: "Social",
  ),

  // History (World) - 2 questions
  Question(
    question: "प्रसिद्ध 'एन्ड्रयू कार्नेगी' कुन उद्योगमा सफल भएका थिए?",
    questionEnglish:
        "In which industry was the famous 'Andrew Carnegie' successful?",
    options: ["तेल", "रेलवे", "स्टील", "अटोमोबाइल"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "History (World)",
  ),
  Question(
    question: "पहिलो मानव चन्द्रमामा कहिले पुगेका थिए?",
    questionEnglish: "When did the first human land on the moon?",
    options: ["सन् १९६७", "सन् १९६९", "सन् १९७१", "सन् १९७३"],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "History (World)",
  ),

  // Education - 2 questions
  Question(
    question: "नेपालको कुन विश्वविद्यालयलाई 'त्रिभुवन विश्वविद्यालय' भनिन्छ?",
    questionEnglish:
        "Which university in Nepal is called 'Tribhuvan University'?",
    options: [
      "काठमाडौं विश्वविद्यालय",
      "पोखरा विश्वविद्यालय",
      "त्रिभुवन विश्वविद्यालय",
      "लुम्बिनी बौद्ध विश्वविद्यालय",
    ],
    correctAnswerIndex:
        2, // The question implicitly asks for itself as it's the specific name.
    gameLevel: 4,
    category: "Education",
  ),
  Question(
    question: "जीवनभर सिक्ने प्रक्रियालाई के भनिन्छ?",
    questionEnglish: "What is the process of lifelong learning called?",
    options: [
      "औपचारिक शिक्षा",
      "अनौपचारिक शिक्षा",
      "गैर-औपचारिक शिक्षा",
      "निरन्तर शिक्षा",
    ],
    correctAnswerIndex: 3,
    gameLevel: 4,
    category: "Education",
  ),

  // Sports (Nepal and World) - 4 questions
  Question(
    question: "क्रिकेट खेलमा 'ह्याट्रिक' भनेको के हो?",
    questionEnglish: "What is 'Hat-trick' in cricket?",
    options: [
      "एकै खेलमा ३ शतक बनाउनु",
      "एकै ओभरमा ३ विकेट लिनु",
      "एकै खेलमा ३ रन लिनु",
      "एकै ओभरमा ३ छक्का हान्नु",
    ],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Sports (World)",
  ),
  Question(
    question: "नेपालका प्रसिद्ध फुटबल खेलाडी 'हरि खड्का' कुन पोजिसनमा खेल्थे?",
    questionEnglish:
        "In which position did famous Nepali footballer 'Hari Khadka' play?",
    options: ["गोलकिपर", "डिफेन्डर", "मिडफिल्डर", "स्ट्राइकर"],
    correctAnswerIndex: 3,
    gameLevel: 4,
    category: "Sports (Nepal)",
  ),
  Question(
    question: "ओलम्पिकको पाँचवटा चक्र (Rings) ले के प्रतिनिधित्व गर्छन्?",
    questionEnglish: "What do the five rings of the Olympics represent?",
    options: ["पाँच महासागर", "पाँच खेल", "पाँच महादेश", "पाँच रङ्ग"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Sports (World)",
  ),
  Question(
    question: "बास्केटबलमा 'स्लैम डङ्क' (Slam Dunk) भनेको के हो?",
    questionEnglish: "What is a 'Slam Dunk' in basketball?",
    options: [
      "टाढाबाट बल फाल्नु",
      "बललाई नेटमा सीधा हातले हाल्नु",
      "बललाई पास दिनु",
      "बललाई जमिनमा उछाल्नु",
    ],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Sports (World)",
  ),

  // IQ - 4 questions
  Question(
    question:
        "यदि एउटा बिरालोले एउटा मुसालाई एक मिनेटमा समात्न सक्छ भने, १०० बिरालोले १०० मुसालाई कति समयमा समात्छन्?",
    questionEnglish:
        "If one cat can catch one mouse in one minute, how long will it take 100 cats to catch 100 mice?",
    options: ["१ मिनेट", "१० मिनेट", "१०० मिनेट", "१ घण्टा"],
    correctAnswerIndex: 0,
    gameLevel: 4,
    category: "IQ",
  ),
  Question(
    question: "म बिहान ठूलो छु, दिउँसो सानो छु, र रातमा हराउँछु। म को हुँ?",
    questionEnglish:
        "I am big in the morning, small at noon, and disappear at night. Who am I?",
    options: ["चन्द्रमा", "तारा", "छाया", "सूर्य"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "IQ",
  ),
  Question(
    question: "कुन कुरा जति धेरै तान्छौ, त्यति नै छोटो हुन्छ?",
    questionEnglish: "What gets shorter the more you pull it?",
    options: ["डोर", "रस्सी", "सिगरेट", "कपडा"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "IQ",
  ),
  Question(
    question: "कुन महिनामा २८ दिन हुन्छ?",
    questionEnglish: "Which month has 28 days?",
    options: ["जनवरी", "फेब्रुअरी", "सेप्टेम्बर", "सबै"],
    correctAnswerIndex: 3, // All months have at least 28 days.
    gameLevel: 4,
    category: "IQ",
  ),

  // Religion - 2 questions
  Question(
    question: "हिन्दु धर्ममा 'गीता' कुन महाकाव्यको अंश हो?",
    questionEnglish: "In Hinduism, 'Gita' is a part of which epic?",
    options: ["रामायण", "महाभारत", "पुराण", "वेद"],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Religion",
  ),
  Question(
    question: "सिख धर्मका संस्थापक को हुन्?",
    questionEnglish: "Who is the founder of Sikhism?",
    options: ["गुरु नानक देव", "महावीर", "बुद्ध", "जरथुष्ट्र"],
    correctAnswerIndex: 0,
    gameLevel: 4,
    category: "Religion",
  ),

  // Language - 2 questions
  Question(
    question: "नेपाली व्याकरणमा 'नाम' (Noun) भनेको के हो?",
    questionEnglish: "What is 'Naam' (Noun) in Nepali grammar?",
    options: [
      "क्रिया जनाउने शब्द",
      "व्यक्ति, वस्तु, स्थान वा भाव जनाउने शब्द",
      "विशेषता जनाउने शब्द",
      "दुई वाक्य जोड्ने शब्द",
    ],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Language",
  ),
  Question(
    question: "'विपरितार्थक' शब्दको अर्थ के हो?",
    questionEnglish:
        "What is the meaning of the word 'Viparitarthak' (Antonym)?",
    options: ["समान अर्थ", "उल्टो अर्थ", "नयाँ अर्थ", "अस्पष्ट अर्थ"],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Language",
  ),

  // Others - 6 questions
  Question(
    question: "विश्व स्वास्थ्य संगठन (WHO) को मुख्यालय कहाँ छ?",
    questionEnglish:
        "Where is the headquarters of the World Health Organization (WHO)?",
    options: ["न्युयोर्क", "लन्डन", "जेनेभा", "पेरिस"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Others",
  ),
  Question(
    question: "कुन ग्रहलाई 'बिहानीको तारा' वा 'साँझको तारा' भनिन्छ?",
    questionEnglish:
        "Which planet is called the 'Morning Star' or 'Evening Star'?",
    options: ["मंगल", "शुक्र", "बृहस्पति", "शनि"],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Others",
  ),
  Question(
    question: "मानव शरीरमा सबैभन्दा सानो मांसपेशी (muscle) कुन हो?",
    questionEnglish: "What is the smallest muscle in the human body?",
    options: ["स्टेपेडियस", "सार्टोरियस", "ग्यास्ट्रोक्नेमियस", "डेल्टोइड"],
    correctAnswerIndex: 0,
    gameLevel: 4,
    category: "Others",
  ),
  Question(
    question: "कुन भिटामिन सूर्यको प्रकाशबाट पाइन्छ?",
    questionEnglish: "Which vitamin is obtained from sunlight?",
    options: ["भिटामिन ए", "भिटामिन सी", "भिटामिन डी", "भिटामिन के"],
    correctAnswerIndex: 2,
    gameLevel: 4,
    category: "Others",
  ),
  Question(
    question:
        "विश्वमा सबैभन्दा बढी जनसंख्या भएको देश कुन हो (सन् २०२३ अनुसार)?",
    questionEnglish:
        "Which country has the largest population in the world (as of 2023)?",
    options: ["चीन", "भारत", "अमेरिका", "इन्डोनेसिया"],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Others",
  ),
  Question(
    question: "कुन जनावरले आफ्नो टाउको १८० डिग्री घुमाउन सक्छ?",
    questionEnglish: "Which animal can rotate its head 180 degrees?",
    options: ["कुकुर", "उल्लू", "बिरालो", "बाघ"],
    correctAnswerIndex: 1,
    gameLevel: 4,
    category: "Others",
  ),

  // --- Game Level 5 (40 Questions - Medium-Hard) ---
  // History (Nepal) - 4 questions
  Question(
    question:
        "नेपालको पहिलो लिखित इतिहास मानिने 'गोपालराज वंशावली' कुन भाषामा लेखिएको छ?",
    questionEnglish:
        "In which language is 'Gopalraj Vamshavali', considered Nepal's first written history, written?",
    options: ["नेपाली", "संस्कृत", "नेवारी", "मैथिली"],
    correctAnswerIndex:
        2, // Actually a mix of Sanskrit and Newari (Nepal Bhasa)
    gameLevel: 5,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालमा 'सती प्रथा' को अन्त्य कहिले भयो (विक्रम संवतमा)?",
    questionEnglish:
        "When was 'Sati Pratha' abolished in Nepal (in Bikram Sambat)?",
    options: ["१९८५", "१९८७", "१९८८", "१९८९"],
    correctAnswerIndex: 3, // In 1988 BS (1929 AD) by Chandra Shumsher.
    gameLevel: 5,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको इतिहासमा 'दरबार हत्याकाण्ड' कहिले भएको थियो?",
    questionEnglish: "When did the 'Palace Massacre' occur in Nepal's history?",
    options: ["२०५७ जेठ १९", "२०५८ जेठ १९", "२०५९ जेठ १९", "२०६० जेठ १९"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "History (Nepal)",
  ),
  Question(
    question: "भक्तपुरको ५५ झ्याले दरबार कसले बनाएका थिए?",
    questionEnglish: "Who built the 55-Window Palace in Bhaktapur?",
    options: [
      "मल्ल राजा जयप्रकाश मल्ल",
      "मल्ल राजा भूपतिन्द्र मल्ल",
      "मल्ल राजा रणजित मल्ल",
      "मल्ल राजा सिद्धिनरसिंह मल्ल",
    ],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "History (Nepal)",
  ),

  // Geography (Nepal/World) - 4 questions
  Question(
    question: "अफ्रिका महादेशको सबैभन्दा अग्लो चुचुरो कुन हो?",
    questionEnglish: "What is the highest peak in the continent of Africa?",
    options: [
      "माउन्ट केन्या",
      "माउन्ट किलिमञ्जारो",
      "माउन्ट रवेन्जोरी",
      "माउन्ट एभरेष्ट",
    ],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Geography (World)",
  ),
  Question(
    question: "नेपालको कुन जिल्लालाई 'तालहरूको जिल्ला' भनिन्छ?",
    questionEnglish:
        "Which district of Nepal is called the 'District of Lakes'?",
    options: ["कास्की", "ललितपुर", "रुपन्देही", "इलाम"],
    correctAnswerIndex: 0,
    gameLevel: 5,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "विश्वको सबैभन्दा ठूलो ताजा पानीको ताल (Freshwater Lake) कुन हो?",
    questionEnglish: "What is the world's largest freshwater lake?",
    options: ["क्यास्पियन सागर", "सुपेरियर ताल", "बैकाल ताल", "भिक्टोरिया ताल"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Geography (World)",
  ),
  Question(
    question: "नेपालको 'ढोरपाटन शिकार आरक्ष' कुन प्रदेशमा पर्छ?",
    questionEnglish:
        "In which province of Nepal is 'Dhorpatan Hunting Reserve' located?",
    options: [
      "गण्डकी प्रदेश",
      "लुम्बिनी प्रदेश",
      "कर्णाली प्रदेश",
      "सुदूरपश्चिम प्रदेश",
    ],
    correctAnswerIndex:
        1, // It falls in Baglung, Rukum and Myagdi districts, primarily Gandaki and Lumbini, but major portion in Lumbini.
    gameLevel: 5,
    category: "Geography (Nepal)",
  ),

  // Science - 4 questions
  Question(
    question: "मानव शरीरमा इन्सुलिन उत्पादन गर्ने अंग कुन हो?",
    questionEnglish: "Which organ in the human body produces insulin?",
    options: ["कलेजो", "मिर्गौला", "प्यान्क्रियाज", "मुटु"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Science",
  ),
  Question(
    question: "पृथ्वीको वायुमण्डलमा सबैभन्दा बढी मात्रामा पाइने ग्यास कुन हो?",
    questionEnglish:
        "Which gas is found in the highest quantity in Earth's atmosphere?",
    options: ["अक्सिजन", "कार्बन डाइअक्साइड", "नाइट्रोजन", "आर्गन"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Science",
  ),
  Question(
    question: "सूर्य ग्रहण कहिले लाग्छ?",
    questionEnglish: "When does a solar eclipse occur?",
    options: [
      "पृथ्वी चन्द्रमा र सूर्यको बीचमा आउँदा",
      "सूर्य पृथ्वी र चन्द्रमाको बीचमा आउँदा",
      "चन्द्रमा सूर्य र पृथ्वीको बीचमा आउँदा",
      "कुनै पनि बेला",
    ],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Science",
  ),
  Question(
    question: "पोटेशियमको रासायनिक संकेत (Symbol) के हो?",
    questionEnglish: "What is the chemical symbol for Potassium?",
    options: ["P", "Pt", "K", "Po"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Science",
  ),

  // Math - 2 questions
  Question(
    question:
        "एउटा वस्तुको मूल्य रु. ५०० छ र २०% छुट छ भने, छुट पछिको मूल्य कति हुन्छ?",
    questionEnglish:
        "If an item costs Rs. 500 and there's a 20% discount, what is the price after discount?",
    options: ["रु. ४००", "रु. ४२०", "रु. ४५०", "रु. ३८०"],
    correctAnswerIndex: 0,
    gameLevel: 5,
    category: "Math",
  ),
  Question(
    question:
        "एउटा वर्गको परिधि (Perimeter) ३६ सेमी छ भने, त्यसको एक भुजाको लम्बाइ कति हुन्छ?",
    questionEnglish:
        "If the perimeter of a square is 36 cm, what is the length of one of its sides?",
    options: ["७ सेमी", "८ सेमी", "९ सेमी", "१० सेमी"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Math",
  ),

  // Culture - 2 questions
  Question(
    question: "नेपालको कुन समुदायमा 'रोडी घर' को चलन छ?",
    questionEnglish:
        "Which community in Nepal has the tradition of 'Rodi Ghar'?",
    options: ["तामाङ", "गुरुङ", "मगर", "राई"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Culture",
  ),
  Question(
    question: "नेपालको 'वसन्तपुर दरबार क्षेत्र' कुन जिल्लामा पर्छ?",
    questionEnglish:
        "In which district is Nepal's 'Basantapur Durbar Square' located?",
    options: ["भक्तपुर", "ललितपुर", "काठमाडौं", "धादिङ"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Culture",
  ),

  // Technology - 2 questions
  Question(
    question: "मोबाइल फोनमा 'SIM' कार्डको पूरा रूप के हो?",
    questionEnglish: "What is the full form of 'SIM' card in a mobile phone?",
    options: [
      "Subscriber Identity Module",
      "Service Information Module",
      "System Integration Module",
      "Security Identification Module",
    ],
    correctAnswerIndex: 0,
    gameLevel: 5,
    category: "Technology",
  ),
  Question(
    question:
        "कृत्रिम बुद्धिमत्ता (Artificial Intelligence) को जनक कसलाई मानिन्छ?",
    questionEnglish: "Who is considered the father of Artificial Intelligence?",
    options: ["एलन ट्युरिङ", "जोन म्याकार्थी", "बिल गेट्स", "मार्क जुकरबर्ग"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Technology",
  ),

  // Social - 2 questions
  Question(
    question: "नेपालको संविधान २०७२ कहिले जारी भयो?",
    questionEnglish: "When was the Constitution of Nepal 2072 promulgated?",
    options: ["असोज १", "असोज २", "असोज ३", "असोज ४"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Social",
  ),
  Question(
    question: "सामाजिक सञ्जालमा 'फेक न्युज' (Fake News) को मुख्य असर के हो?",
    questionEnglish: "What is the main impact of 'Fake News' on social media?",
    options: [
      "मानिसलाई मनोरञ्जन दिनु",
      "गलत सूचना फैलाउनु",
      "ज्ञान बढाउनु",
      "सम्बन्ध सुधार्नु",
    ],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Social",
  ),

  // History (World) - 2 questions
  Question(
    question: "नेपोलियन बोनापार्ट कुन देशका शासक थिए?",
    questionEnglish: "Napoleon Bonaparte was the ruler of which country?",
    options: ["जर्मनी", "बेलायत", "फ्रान्स", "रुस"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "History (World)",
  ),
  Question(
    question:
        "दोस्रो विश्वयुद्धमा जापानमाथि कुन शहरहरूमा आणविक बम खसालिएको थियो?",
    questionEnglish:
        "Which cities in Japan were atomic bombed during World War II?",
    options: [
      "टोकियो र ओसाका",
      "हिरोशिमा र नागासाकी",
      "क्योटो र नागोया",
      "फुकुओका र सापोरो",
    ],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "History (World)",
  ),

  // Education - 2 questions
  Question(
    question: "मानिसको दिमागको अध्ययन गर्ने विज्ञानलाई के भनिन्छ?",
    questionEnglish: "What is the science of studying the human brain called?",
    options: ["कार्डियोलोजी", "न्युरोलोजी", "ओन्कोलोजी", "डर्माटोलोजी"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Education",
  ),
  Question(
    question: "शैक्षिक प्रविधिमा 'MOOC' (मुक) को पूरा रूप के हो?",
    questionEnglish:
        "What is the full form of 'MOOC' in educational technology?",
    options: [
      "Massive Online Open Courses",
      "Modern Open Online Certification",
      "Multimedia Open Online Content",
      "Modular Online Open Classes",
    ],
    correctAnswerIndex: 0,
    gameLevel: 5,
    category: "Education",
  ),

  // Sports (Nepal and World) - 4 questions
  Question(
    question:
        "विश्व प्रसिद्ध फुटबल खेलाडी क्रिस्टियानो रोनाल्डो कुन देशका हुन्?",
    questionEnglish:
        "Which country is world-famous footballer Cristiano Ronaldo from?",
    options: ["ब्राजिल", "अर्जेन्टिना", "पोर्चुगल", "स्पेन"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Sports (World)",
  ),
  Question(
    question:
        "नेपालका प्रसिद्ध तेक्वान्दो खेलाडी दीपक बिष्टले कति स्वर्ण पदक जितेका छन् (साग खेलमा)?",
    questionEnglish:
        "How many gold medals has famous Nepali Taekwondo player Deepak Bista won (in SAG games)?",
    options: ["२", "३", "४", "५"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Sports (Nepal)",
  ),
  Question(
    question: "चेस खेलमा रानी (Queen) कति दिशामा हिँड्न सक्छ?",
    questionEnglish: "In chess, in how many directions can the Queen move?",
    options: ["एक", "दुई", "चार", "सबै दिशामा"],
    correctAnswerIndex: 3,
    gameLevel: 5,
    category: "Sports (World)",
  ),
  Question(
    question: "कुन खेलमा 'गल्फर' र 'प्याटर' शब्द प्रयोग हुन्छ?",
    questionEnglish: "In which game are the terms 'Golfer' and 'Putter' used?",
    options: ["फुटबल", "बास्केटबल", "क्रिकेट", "गल्फ"],
    correctAnswerIndex: 3,
    gameLevel: 5,
    category: "Sports (World)",
  ),

  // IQ - 4 questions
  Question(
    question:
        "कुन कुरा तपाईंको हो, तर अरुले यसलाई तपाईं भन्दा बढी प्रयोग गर्छन्?",
    questionEnglish: "What belongs to you, but others use it more than you do?",
    options: ["घर", "पैसा", "नाम", "गाडी"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "IQ",
  ),
  Question(
    question:
        "म बिहान देख्न सक्दिन, म दिउँसो देख्न सक्दिन, म रातमा मात्र देख्न सक्छु। म को हुँ?",
    questionEnglish:
        "I can't see in the morning, I can't see in the afternoon, I can only see at night. Who am I?",
    options: ["सूर्य", "तारा", "चन्द्रमा", "उल्लू"],
    correctAnswerIndex: 3,
    gameLevel: 5,
    category: "IQ",
  ),
  Question(
    question: "म सधैँ अगाडि बढ्छु, तर मेरो कुनै खुट्टा छैन। म को हुँ?",
    questionEnglish: "I always go forward, but I have no legs. Who am I?",
    options: ["घडी", "नदी", "समय", "साँप"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "IQ",
  ),
  Question(
    question:
        "तपाईंको फ्रिजमा ५ वटा स्याउ छन्। तपाईंले २ वटा झिक्नुभयो। कति वटा बाँकी छन्?",
    questionEnglish:
        "You have 5 apples in your fridge. You take out 2. How many are left?",
    options: ["२", "३", "५", "७"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "IQ",
  ),

  // Religion - 2 questions
  Question(
    question: "भगवान् बुद्धले कहाँ ज्ञान प्राप्त गरेका थिए?",
    questionEnglish: "Where did Lord Buddha attain enlightenment?",
    options: ["लुम्बिनी", "कुशीनगर", "बोधगया", "सारनाथ"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Religion",
  ),
  Question(
    question: "क्रिसमस कुन धर्मको मुख्य चाड हो?",
    questionEnglish: "Christmas is the main festival of which religion?",
    options: ["हिन्दु धर्म", "इस्लाम धर्म", "क्रिश्चियन धर्म", "बौद्ध धर्म"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Religion",
  ),

  // Language - 2 questions
  Question(
    question: "नेपाली भाषामा 'उद्देश्य' र 'विधेय' कुन व्याकरणको भाग हुन्?",
    questionEnglish:
        "In Nepali language, 'Uddeshya' (Subject) and 'Vidheya' (Predicate) are parts of which grammar component?",
    options: ["शब्द", "पद", "वाक्य", "लिंग"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Language",
  ),
  Question(
    question: "'गरिब' शब्दको विपरीतार्थी शब्द कुन हो?",
    questionEnglish: "What is the antonym of the word 'Garib' (Poor)?",
    options: ["दुःखी", "धेनी", "कमजोर", "सादा"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Language",
  ),

  // Others - 6 questions
  Question(
    question: "पशुपतिनाथ मन्दिर कुन नदीको किनारमा अवस्थित छ?",
    questionEnglish:
        "On the banks of which river is Pashupatinath Temple located?",
    options: ["बागमती", "विष्णुमती", "मनोहरा", "नख्खु"],
    correctAnswerIndex: 0,
    gameLevel: 5,
    category: "Others",
  ),
  Question(
    question: "विश्वको सबैभन्दा ठूलो समुद्री जनावर कुन हो?",
    questionEnglish: "What is the largest marine animal in the world?",
    options: ["ह्वेल सार्क", "अक्टोपस", "निलो ह्वेल", "डोल्फिन"],
    correctAnswerIndex: 2,
    gameLevel: 5,
    category: "Others",
  ),
  Question(
    question: "मानव शरीरमा सबैभन्दा कडा पदार्थ कुन हो?",
    questionEnglish: "What is the hardest substance in the human body?",
    options: ["हड्डी", "दाँतको इनामेल", "नङ", "कपाल"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Others",
  ),
  Question(
    question: "कुन धातुलाई 'सफेद सुन' भनिन्छ?",
    questionEnglish: "Which metal is called 'White Gold'?",
    options: ["चाँदी", "प्लेटिनम", "फलाम", "तामा"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Others",
  ),
  Question(
    question: "विश्वको सबैभन्दा लामो नदी कुन हो?",
    questionEnglish: "What is the longest river in the world?",
    options: ["एमाजोन", "यांग्त्जी", "मिसिसिपी", "निल"],
    correctAnswerIndex: 3,
    gameLevel: 5,
    category: "Others",
  ),
  Question(
    question: "कुन ग्रहलाई 'बिहानको तारा' वा 'साँझको तारा' भनिन्छ?",
    questionEnglish:
        "Which planet is called the 'Morning Star' or 'Evening Star'?",
    options: ["मंगल", "शुक्र", "बृहस्पति", "शनि"],
    correctAnswerIndex: 1,
    gameLevel: 5,
    category: "Others",
  ),

  // --- Game Level 6 (40 Questions - Medium-Hard) ---
  // History (Nepal) - 4 questions
  Question(
    question:
        "नेपालको पहिलो संविधान सभाको निर्वाचन कहिले भएको थियो (विक्रम संवतमा)?",
    questionEnglish:
        "When was the first Constituent Assembly election held in Nepal (in Bikram Sambat)?",
    options: ["२०६० चैत २८", "२०६२ चैत २८", "२०६४ चैत २८", "२०६६ चैत २८"],
    correctAnswerIndex: 2, // April 10, 2008 (Chaitra 28, 2064 BS)
    gameLevel: 6,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको इतिहासमा 'कोत पर्व' कहिले भएको थियो?",
    questionEnglish:
        "When did the 'Kot Parva' (massacre) occur in Nepal's history?",
    options: [
      "वि.सं. १९०२ भाद्र",
      "वि.सं. १९०३ भाद्र",
      "वि.सं. १९०४ भाद्र",
      "वि.सं. १९०५ भाद्र",
    ],
    correctAnswerIndex: 1, // Bhadra 31, 1903 BS (September 14, 1846 AD).
    gameLevel: 6,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालमा 'माओवादी जनयुद्ध' कहिले सुरु भएको थियो (विक्रम संवतमा)?",
    questionEnglish:
        "When did the 'Maoist People's War' begin in Nepal (in Bikram Sambat)?",
    options: ["२०५०", "२०५१", "२०५२", "२०५३"],
    correctAnswerIndex: 2, // Falgun 1, 2052 BS (February 13, 1996 AD).
    gameLevel: 6,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको इतिहासमा 'मुख्तियार' को पद कसले सिर्जना गरेका थिए?",
    questionEnglish: "Who created the post of 'Mukhtiyar' in Nepal's history?",
    options: [
      "भीमसेन थापा",
      "जंगबहादुर राणा",
      "रणबहादुर शाह",
      "पृथ्वीनारायण शाह",
    ],
    correctAnswerIndex: 0,
    gameLevel: 6,
    category: "History (Nepal)",
  ),

  // Geography (Nepal/World) - 4 questions
  Question(
    question: "संयुक्त राष्ट्र संघको मुख्यालय कहाँ छ?",
    questionEnglish: "Where is the headquarters of the United Nations?",
    options: ["जेनेभा", "पेरिस", "न्युयोर्क", "लन्डन"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Geography (World)",
  ),
  Question(
    question: "नेपालको कुन जिल्लालाई 'नेपालको अन्न भण्डार' भनिन्छ?",
    questionEnglish:
        "Which district of Nepal is called the 'Granary of Nepal'?",
    options: ["रुपन्देही", "झापा", "चितवन", "कैलाली"],
    correctAnswerIndex: 3, // Kailali is often referred to as a major granary.
    gameLevel: 6,
    category: "Geography (Nepal)",
  ),
  Question(
    question: "विश्वको कुन महादेशलाई 'अन्ध महादेश' (Dark Continent) भनिन्छ?",
    questionEnglish:
        "Which continent in the world is called the 'Dark Continent'?",
    options: ["एसिया", "अफ्रिका", "दक्षिण अमेरिका", "अन्टार्कटिका"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Geography (World)",
  ),
  Question(
    question: "नेपालको 'गोसाईंकुण्ड ताल' कुन जिल्लामा पर्छ?",
    questionEnglish:
        "In which district of Nepal is 'Gosainkunda Lake' located?",
    options: ["सिन्धुपाल्चोक", "रसुवा", "नुवाकोट", "मकवानपुर"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Geography (Nepal)",
  ),

  // Science - 4 questions
  Question(
    question: "पृथ्वीमा सबैभन्दा धेरै मात्रामा पाइने तत्व कुन हो?",
    questionEnglish: "Which element is found in the highest quantity on Earth?",
    options: ["अक्सिजन", "सिलिकन", "फलाम", "एलुमिनियम"],
    correctAnswerIndex: 0, // In the Earth's crust by mass.
    gameLevel: 6,
    category: "Science",
  ),
  Question(
    question: "सूर्यको प्रकाश पृथ्वीमा पुग्न कति समय लाग्छ (लगभग)?",
    questionEnglish:
        "How long does it take for sunlight to reach Earth (approximately)?",
    options: ["५ मिनेट", "८ मिनेट २० सेकेन्ड", "१० मिनेट", "१२ मिनेट"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Science",
  ),
  Question(
    question: "मानव शरीरमा सबैभन्दा ठूलो ग्रन्थी (Gland) कुन हो?",
    questionEnglish: "What is the largest gland in the human body?",
    options: ["थाइराइड", "प्यान्क्रियाज", "अण्डाशय (Ovary)", "कलेजो"],
    correctAnswerIndex: 3,
    gameLevel: 6,
    category: "Science",
  ),
  Question(
    question: "पानी उम्लने तापक्रम (Boiling point) कति डिग्री सेल्सियस हुन्छ?",
    questionEnglish: "What is the boiling point of water in degrees Celsius?",
    options: ["० डिग्री", "५० डिग्री", "१०० डिग्री", "२१२ डिग्री"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Science",
  ),

  // Math - 2 questions
  Question(
    question: "यदि A=५, B=१० र C=१५ हो भने, (A+B)*C कति हुन्छ?",
    questionEnglish: "If A=5, B=10, and C=15, what is (A+B)*C?",
    options: ["१५०", "१७५", "२२०", "२२५"],
    correctAnswerIndex: 2, // (5+10)*15 = 15*15 = 225
    gameLevel: 6,
    category: "Math",
  ),
  Question(
    question:
        "एउटा वस्तुलाई रु. ८०० मा किनेर रु. १००० मा बेचियो भने, कति प्रतिशत नाफा भयो?",
    questionEnglish:
        "If an item is bought for Rs. 800 and sold for Rs. 1000, what is the profit percentage?",
    options: ["२०%", "२५%", "३०%", "३५%"],
    correctAnswerIndex: 1, // (200/800)*100 = 25%
    gameLevel: 6,
    category: "Math",
  ),

  // Culture - 2 questions
  Question(
    question: "नेपालको कुन समुदायमा 'धान नाच' (Paddy Dance) प्रसिद्ध छ?",
    questionEnglish:
        "Which community in Nepal is famous for the 'Dhan Nach' (Paddy Dance)?",
    options: ["थारु", "लिम्बु", "मगर", "तामाङ"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Culture",
  ),
  Question(
    question:
        "नेपालको राष्ट्रिय पोशाक 'दौरा सुरुवाल' लाई कहिले राष्ट्रिय पोशाकको रूपमा घोषणा गरियो (विक्रम संवतमा)?",
    questionEnglish:
        "When was Nepal's national dress 'Daura Suruwal' declared as the national dress (in Bikram Sambat)?",
    options: ["२०१५", "२०१७", "२०१९", "२०२१"],
    correctAnswerIndex:
        1, // This is a bit tricky, it was made mandatory for government officials in 2017 BS, becoming de facto national.
    gameLevel: 6,
    category: "Culture",
  ),

  // Technology - 2 questions
  Question(
    question: "कम्प्युटरमा 'फाइल' (File) लाई मेटाउँदा कहाँ जान्छ?",
    questionEnglish:
        "When you delete a 'File' on a computer, where does it go?",
    options: ["डकुमेन्ट्स", "डेस्कटप", "रिसाइकल बिन", "डाउनलोड्स"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Technology",
  ),
  Question(
    question: "इन्टरनेट प्रोटोकल 'HTTP' को पूरा रूप के हो?",
    questionEnglish: "What is the full form of 'HTTP' in internet protocol?",
    options: [
      "HyperText Transfer Protocol",
      "High Technology Transfer Process",
      "Home Tool Transfer Program",
      "Hyperlink Text Transfer Protocol",
    ],
    correctAnswerIndex: 0,
    gameLevel: 6,
    category: "Technology",
  ),

  // Social - 2 questions
  Question(
    question:
        "नेपालमा 'लैंगिक हिंसा विरुद्धको १६ दिने अभियान' कहिलेबाट सुरु हुन्छ?",
    questionEnglish:
        "When does the '16 Days of Activism against Gender-Based Violence' campaign begin in Nepal?",
    options: ["नोभेम्बर २५", "डिसेम्बर १०", "जनवरी १", "मार्च ८"],
    correctAnswerIndex: 0,
    gameLevel: 6,
    category: "Social",
  ),
  Question(
    question: "मानव अधिकार दिवस कहिले मनाइन्छ?",
    questionEnglish: "When is Human Rights Day celebrated?",
    options: ["डिसेम्बर ८", "डिसेम्बर ९", "डिसेम्बर १०", "डिसेम्बर ११"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Social",
  ),

  // History (World) - 2 questions
  Question(
    question: "विश्वको कुन देशलाई 'उगौँदो सूर्यको देश' भनिन्छ?",
    questionEnglish:
        "Which country in the world is called the 'Land of the Rising Sun'?",
    options: ["चीन", "जापान", "कोरिया", "भियतनाम"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "History (World)",
  ),
  Question(
    question: "कुन मुगल सम्राटलाई 'जिन्दा पीर' (Living Saint) भनिन्थ्यो?",
    questionEnglish:
        "Which Mughal emperor was known as 'Zinda Pir' (Living Saint)?",
    options: ["अकबर", "जहाँगीर", "शाहजहाँ", "औरंगजेब"],
    correctAnswerIndex: 3,
    gameLevel: 6,
    category: "History (World)",
  ),

  // Education - 2 questions
  Question(
    question: "प्राथमिक शिक्षाको प्रमुख लक्ष्य के हो?",
    questionEnglish: "What is the main goal of primary education?",
    options: [
      "उच्च शिक्षाका लागि तयारी",
      "आधारभूत ज्ञान र सीप प्रदान गर्ने",
      "रोजगारमुखी बनाउने",
      "विशिष्ट ज्ञान दिने",
    ],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Education",
  ),
  Question(
    question: "बाल मनोविज्ञानको अध्ययन गर्ने विज्ञानलाई के भनिन्छ?",
    questionEnglish: "What is the science of studying child psychology called?",
    options: ["जेरोन्टोलोजी", "पेडियाट्रिक्स", "पेडागोजी", "चाइल्ड साइकोलोजी"],
    correctAnswerIndex: 3,
    gameLevel: 6,
    category: "Education",
  ),

  // Sports (Nepal and World) - 4 questions
  Question(
    question:
        "सन् २०१६ मा नेपालले आईसीसी वर्ल्ड क्रिकेट लिग डिभिजन पाँचको उपाधि कुन देशलाई हराएर जितेको थियो?",
    questionEnglish:
        "In 2016, which country did Nepal defeat to win the ICC World Cricket League Division Five title?",
    options: ["ओमान", "जर्सी", "अमेरिका", "केनडा"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Sports (Nepal)",
  ),
  Question(
    question: "फुटबलमा 'पेनाल्टी किक' (Penalty Kick) कहाँबाट हान्ने गरिन्छ?",
    questionEnglish: "From where is a 'Penalty Kick' taken in football?",
    options: [
      "मध्यरेखा",
      "पेनाल्टी एरियाभित्र",
      "पेनाल्टी स्पटबाट",
      "कर्नर किक पोइन्टबाट",
    ],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Sports (World)",
  ),
  Question(
    question: "ओलम्पिक खेलकुदमा 'मोटो' (Motto) के हो?",
    questionEnglish: "What is the 'Motto' of the Olympic Games?",
    options: [
      "द्रुत, उच्च, बलियो",
      "जित, सम्मान, प्रयास",
      "खेल, जीवन, मित्रता",
      "गति, शक्ति, सम्मान",
    ],
    correctAnswerIndex:
        0, // Citius, Altius, Fortius – Communiter (Faster, Higher, Stronger – Together).
    gameLevel: 6,
    category: "Sports (World)",
  ),
  Question(
    question: "टेबल टेनिसको अर्को नाम के हो?",
    questionEnglish: "What is another name for Table Tennis?",
    options: ["ब्याडमिन्टन", "पिङ-पङ", "लौन टेनिस", "स्क्वास"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Sports (World)",
  ),

  // IQ - 4 questions
  Question(
    question:
        "यदि तपाईंको साथमा एउटा खेल खेल्ने मानिस हुनुहुन्न, भने तपाईंले कुन खेल खेल्न सक्नुहुन्छ?",
    questionEnglish:
        "If you don't have someone to play with, what game can you play?",
    options: ["फुटबल", "चेस", "एकल खेल (Solitaire)", "क्रिकेट"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "IQ",
  ),
  Question(
    question:
        "म धनीहरूलाई आवश्यक छु, गरिबहरूलाई मसित छ। यदि तिमीले मलाई खायौ भने तिमी मर्छौ। म को हुँ?",
    questionEnglish:
        "I am needed by the rich, the poor have me. If you eat me, you will die. Who am I?",
    options: ["खाना", "हृदय", "केही पनि (Nothing)", "निन्द्रा"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "IQ",
  ),
  Question(
    question:
        "कुन कुराले हरेक प्रश्नको उत्तर दिन्छ, तर कहिल्यै प्रश्न सोध्दैन?",
    questionEnglish: "What answers every question but never asks a question?",
    options: ["शिक्षक", "किताब", "प्रतिध्वनि (Echo)", "अभिभावक"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "IQ",
  ),
  Question(
    question: "मेरो धेरै प्वालहरू छन् तर म अझै पानी राख्न सक्छु। म को हुँ?",
    questionEnglish: "I have many holes but can still hold water. Who am I?",
    options: ["पाइप", "स्पन्ज", "बाल्टी", "कप"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "IQ",
  ),

  // Religion - 2 questions
  Question(
    question: "भगवान् शिवको निवास स्थान कुन पर्वतलाई मानिन्छ?",
    questionEnglish: "Which mountain is considered the abode of Lord Shiva?",
    options: ["कैलाश पर्वत", "हिमाल पर्वत", "एभरेस्ट पर्वत", "अन्नपूर्ण पर्वत"],
    correctAnswerIndex: 0,
    gameLevel: 6,
    category: "Religion",
  ),
  Question(
    question: "इस्लाम धर्ममा 'रमजान' महिनामा के गरिन्छ?",
    questionEnglish: "What is done during the month of 'Ramadan' in Islam?",
    options: [
      "उत्सव मनाइन्छ",
      "व्रत (रोजा) राखिन्छ",
      "विवाह गरिन्छ",
      "युद्ध गरिन्छ",
    ],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Religion",
  ),

  // Language - 2 questions
  Question(
    question: "नेपाली भाषामा 'अनुप्रास अलंकार' भनेको के हो?",
    questionEnglish:
        "What is 'Anupras Alankar' (Alliteration) in Nepali language?",
    options: [
      "एउटै शब्द धेरै पटक दोहोर्याउनु",
      "एउटै वर्ण वा ध्वनि बारम्बार प्रयोग गर्नु",
      "विपरीत अर्थका शब्द प्रयोग गर्नु",
      "उपमा दिनु",
    ],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Language",
  ),
  Question(
    question: "'कविता' शब्दको बहुवचन के हुन्छ?",
    questionEnglish: "What is the plural form of the word 'Kavita' (Poem)?",
    options: ["कविताहरू", "कविताइ", "कविते", "कवितागन"],
    correctAnswerIndex: 0,
    gameLevel: 6,
    category: "Language",
  ),

  // Others - 6 questions
  Question(
    question: "प्रसिद्ध 'मोना लिसा' चित्रकला कसले बनाएका थिए?",
    questionEnglish: "Who painted the famous 'Mona Lisa' painting?",
    options: [
      "भिन्सेन्ट भ्यान गोग",
      "पाब्लो पिकासो",
      "लियोनार्डो दा भिन्ची",
      "माइकल एन्जेलो",
    ],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Others",
  ),
  Question(
    question: "विश्वको कुन शहरलाई 'गुलाबी सहर' (Pink City) भनेर चिनिन्छ?",
    questionEnglish: "Which city in the world is known as the 'Pink City'?",
    options: ["नयाँ दिल्ली", "जयपुर", "उदयपुर", "मुम्बई"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Others",
  ),
  Question(
    question: "हाम्रो शरीरको सबैभन्दा ठूलो ग्रन्थी कुन हो?",
    questionEnglish: "What is the largest gland in our body?",
    options: ["थाइराइड ग्रन्थी", "प्यान्क्रियाज", "कलेजो", "पिट्युटरी ग्रन्थी"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Others",
  ),
  Question(
    question: "कुन ग्रहलाई 'बिहानीको तारा' वा 'साँझको तारा' भनिन्छ?",
    questionEnglish:
        "Which planet is called the 'Morning Star' or 'Evening Star'?",
    options: ["मंगल", "शुक्र", "बृहस्पति", "शनि"],
    correctAnswerIndex: 1,
    gameLevel: 6,
    category: "Others",
  ),
  Question(
    question:
        "विश्वमा सबैभन्दा धेरै बोलिने भाषा कुन हो (भाषीहरूको संख्याको आधारमा)?",
    questionEnglish:
        "What is the most spoken language in the world (based on the number of speakers)?",
    options: ["हिन्दी", "अंग्रेजी", "मन्डारिन चिनियाँ", "स्पेनिश"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Others",
  ),
  Question(
    question: "कुन जनावरले आफ्नो छालाको रङ्ग परिवर्तन गर्न सक्छ?",
    questionEnglish: "Which animal can change the color of its skin?",
    options: ["बाघ", "ऊँट", "छेपारो", "साँप"],
    correctAnswerIndex: 2,
    gameLevel: 6,
    category: "Others",
  ),

  // --- Game Level 7 (40 Questions - Hard) ---
  // History (Nepal) - 4 questions
  Question(
    question: "नेपालको 'सुगौली सन्धि' कहिले भएको थियो (विक्रम संवतमा)?",
    questionEnglish:
        "When was the 'Treaty of Sugauli' in Nepal (in Bikram Sambat)?",
    options: ["१८७१", "१८७२", "१८७३", "१८७४"],
    correctAnswerIndex:
        2, // December 2, 1815 (BS 1872 Mangsir 19), ratified March 4, 1816 (BS 1872 Falgun 22). The question often implies the signing year.
    gameLevel: 7,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको इतिहासमा '५८ सालको घट्ना' भनेर कुन घटनालाई चिनिन्छ?",
    questionEnglish:
        "Which event is known as the '58 Sal ko Ghatana' (incident of 2058 BS) in Nepali history?",
    options: [
      "२०४६ को जनआन्दोलन",
      "दरबार हत्याकाण्ड",
      "माओवादी शान्ति प्रक्रिया",
      "संविधान सभा निर्वाचन",
    ],
    correctAnswerIndex: 1, // Royal Massacre (जेठ १९, २०५८).
    gameLevel: 7,
    category: "History (Nepal)",
  ),
  Question(
    question: "नेपालको पहिलो महिला सहिद को हुन्?",
    questionEnglish: "Who is the first female martyr of Nepal?",
    options: [
      "दुर्गादेवी पौडेल",
      "योगमाया न्यौपाने",
      "गौरी माया",
      "भीम कुमारी थापा",
    ],
    correctAnswerIndex: 3, // Bhim Kumari Thapa, executed in 1999 BS.
    gameLevel: 7,
    category: "History (Nepal)",
  ),
  Question(
    question: "लिच्छवी कालमा 'ग्राम' को प्रमुखलाई के भनिन्थ्यो?",
    questionEnglish:
        "What was the head of a 'Gram' called during the Lichhavi period?",
    options: ["महा सामन्त", "ग्रामिक", "पंचालिक", "अधिपति"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "History (Nepal)",
  ),

  // Geography (Nepal/World) - 4 questions
  Question(
    question:
        "विश्वको कुन महादेशलाई 'प्लेटोको महादेश' (Plateau Continent) भनिन्छ?",
    questionEnglish:
        "Which continent in the world is called the 'Plateau Continent'?",
    options: ["एसिया", "अफ्रिका", "दक्षिण अमेरिका", "अष्ट्रेलिया"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Geography (World)",
  ),
  Question(
    question:
        "नेपालको कुन राष्ट्रिय निकुञ्जलाई 'जंगली हात्तीको स्वर्ग' भनिन्छ?",
    questionEnglish:
        "Which national park in Nepal is known as the 'paradise of wild elephants'?",
    options: [
      "बर्दिया राष्ट्रिय निकुञ्ज",
      "चितवन राष्ट्रिय निकुञ्ज",
      "कोशीटप्पु वन्यजन्तु आरक्ष",
      "शुक्लाफाँटा राष्ट्रिय निकुञ्ज",
    ],
    correctAnswerIndex: 0,
    gameLevel: 7,
    category: "Geography (Nepal)",
  ),
  Question(
    question:
        "प्रसिद्ध 'ग्र्यान्ड क्यान्यन' (Grand Canyon) कुन देशमा अवस्थित छ?",
    questionEnglish: "In which country is the famous 'Grand Canyon' located?",
    options: ["क्यानडा", "अमेरिका", "मेक्सिको", "ब्राजिल"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Geography (World)",
  ),
  Question(
    question:
        "नेपालको 'सगरमाथा राष्ट्रिय निकुञ्ज' लाई विश्व सम्पदा सूचीमा कहिले सूचीकृत गरियो (सन्मा)?",
    questionEnglish:
        "When was Nepal's 'Sagarmatha National Park' listed as a World Heritage Site (in AD)?",
    options: ["१९७६", "१९७९", "१९८१", "१९८४"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Geography (Nepal)",
  ),

  // Science - 4 questions
  Question(
    question: "मानव शरीरमा सबैभन्दा लामो कोशिका (Cell) कुन हो?",
    questionEnglish: "What is the longest cell in the human body?",
    options: [
      "रगत कोशिका",
      "मांसपेशी कोशिका",
      "स्नायु कोशिका (न्युरोन)",
      "छाला कोशिका",
    ],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Science",
  ),
  Question(
    question:
        "कुन सिद्धान्तले 'हरेक क्रियाको बराबर र विपरीत प्रतिक्रिया हुन्छ' भनी बताउँछ?",
    questionEnglish:
        "Which law states that 'for every action, there is an equal and opposite reaction'?",
    options: [
      "न्युटनको पहिलो नियम",
      "न्युटनको दोस्रो नियम",
      "न्युटनको तेस्रो नियम",
      "गुरुत्वाकर्षणको नियम",
    ],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Science",
  ),
  Question(
    question: "ओजोन तहले पृथ्वीलाई कुन किरणबाट बचाउँछ?",
    questionEnglish: "Which rays does the ozone layer protect the Earth from?",
    options: ["गामा किरण", "पराबैजनी किरण", "एक्स-रे", "अवरक्त किरण"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Science",
  ),
  Question(
    question:
        "फोटोसिन्थेसिस (Photosynthesis) प्रक्रियामा कुन ग्यास अवशोषित हुन्छ?",
    questionEnglish: "Which gas is absorbed in the process of Photosynthesis?",
    options: ["अक्सिजन", "नाइट्रोजन", "कार्बन डाइअक्साइड", "हाइड्रोजन"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Science",
  ),

  // Math - 2 questions
  Question(
    question:
        "एउटा वस्तुको मूल्य रु. १२०० छ। यदि १०% कर लाग्छ भने, कुल मूल्य कति हुन्छ?",
    questionEnglish:
        "An item costs Rs. 1200. If there is a 10% tax, what is the total price?",
    options: ["रु. १२१०", "रु. १२२०", "रु. १३००", "रु. १३२०"],
    correctAnswerIndex: 3,
    gameLevel: 7,
    category: "Math",
  ),
  Question(
    question:
        "यदि एउटा गोला (Sphere) को अर्धव्यास (Radius) ७ सेमी छ भने, त्यसको आयतन (Volume) लगभग कति हुन्छ? (पाई = २२/७)",
    questionEnglish:
        "If the radius of a sphere is 7 cm, what is its approximate volume? (Pi = 22/7)",
    options: ["१४३७.३३ घन सेमी", "१०७८ घन सेमी", "४४१ घन सेमी", "६१६ घन सेमी"],
    correctAnswerIndex: 0, // (4/3)*pi*r^3 = (4/3)*(22/7)*7^3 = 1437.33
    gameLevel: 7,
    category: "Math",
  ),

  // Culture - 2 questions
  Question(
    question: "नेपालको कुन ठाउँलाई 'मूर्तिका नगरी' भनेर चिनिन्छ?",
    questionEnglish:
        "Which place in Nepal is known as the 'City of Sculptures'?",
    options: ["काठमाडौं", "भक्तपुर", "ललितपुर", "कीर्तिपुर"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Culture",
  ),
  Question(
    question:
        "नेपालको कुन समुदायले 'सेलो' (Selø) गीत र नृत्यलाई आफ्नो सांस्कृतिक पहिचान मान्छ?",
    questionEnglish:
        "Which community in Nepal considers 'Selø' songs and dances as their cultural identity?",
    options: ["गुरुङ", "मगर", "तामाङ", "राई"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Culture",
  ),

  // Technology - 2 questions
  Question(
    question: "कम्प्युटरमा 'फायरवाल' (Firewall) को मुख्य काम के हो?",
    questionEnglish: "What is the main function of a 'Firewall' in a computer?",
    options: [
      "फाइलहरू भण्डारण गर्ने",
      "कम्प्युटरलाई भाइरसबाट बचाउने",
      "नेटवर्क ट्राफिक नियन्त्रण गर्ने",
      "प्रिन्टर चलाउने",
    ],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Technology",
  ),
  Question(
    question:
        "डिजिटल मुद्रा बिटक्वाइन (Bitcoin) को आविष्कारक को हुन् (छद्म नाम)?",
    questionEnglish:
        "Who is the inventor of the digital currency Bitcoin (pseudonym)?",
    options: ["एलन मस्क", "सतोशी नाकामोटो", "भिटालिक बुटेरिन", "जेफ बेजोस"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Technology",
  ),

  // Social - 2 questions
  Question(
    question:
        "नेपालमा 'भ्रष्टाचार विरुद्धको अन्तर्राष्ट्रिय दिवस' कहिले मनाइन्छ?",
    questionEnglish:
        "When is 'International Anti-Corruption Day' celebrated in Nepal?",
    options: ["डिसेम्बर ७", "डिसेम्बर ८", "डिसेम्बर ९", "डिसेम्बर १०"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Social",
  ),
  Question(
    question:
        "संयुक्त राष्ट्रसंघको कुन एजेन्सीले बालबालिकाको अधिकारको लागि काम गर्छ?",
    questionEnglish: "Which UN agency works for children's rights?",
    options: [
      "युएनडिपी (UNDP)",
      "युनेस्को (UNESCO)",
      "युनिसेफ (UNICEF)",
      "डब्लुएचओ (WHO)",
    ],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Social",
  ),

  // History (World) - 2 questions
  Question(
    question:
        "प्रसिद्ध 'मार्च अन वाशिंगटन' (March on Washington) को नेतृत्व कसले गरेका थिए?",
    questionEnglish: "Who led the famous 'March on Washington'?",
    options: [
      "नेल्सन मण्डेला",
      "महात्मा गान्धी",
      "मार्टिन लुथर किंग जूनियर",
      "माल्कम एक्स",
    ],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "History (World)",
  ),
  Question(
    question: "रोमन साम्राज्यको पतन कहिले भयो (सन्मा)?",
    questionEnglish: "When did the Roman Empire fall (in AD)?",
    options: ["३९५", "४१०", "४७६", "५३५"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "History (World)",
  ),

  // Education - 2 questions
  Question(
    question:
        "मनोविज्ञानमा 'शास्त्रीय अनुबन्धन' (Classical Conditioning) को सिद्धान्त कसले प्रतिपादन गरेका हुन्?",
    questionEnglish:
        "Who proposed the theory of 'Classical Conditioning' in psychology?",
    options: ["बी.एफ. स्किनर", "सिग्मन्ड फ्रायड", "इभान पाभलोभ", "जीन पियागेट"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Education",
  ),
  Question(
    question: "उच्च शिक्षामा 'पीएच.डी.' (Ph.D.) को पूरा रूप के हो?",
    questionEnglish: "What is the full form of 'Ph.D.' in higher education?",
    options: [
      "Professional Honours Degree",
      "Doctor of Philosophy",
      "Post-High Diploma",
      "Public Health Doctorate",
    ],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Education",
  ),

  // Sports (Nepal and World) - 4 questions
  Question(
    question: "विश्व कप फुटबलमा सबैभन्दा धेरै गोल गर्ने खेलाडी को हुन्?",
    questionEnglish:
        "Who is the all-time leading goal scorer in the FIFA World Cup?",
    options: ["पेले", "मिरोस्लाभ क्लोज", "रोनाल्डो (ब्राजिल)", "जस्ट फोन्टेन"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Sports (World)",
  ),
  Question(
    question: "नेपाली धाविका मीरा राई कुन खेलका लागि प्रसिद्ध छिन्?",
    questionEnglish: "Nepali runner Mira Rai is famous for which sport?",
    options: ["म्याराथन", "टेक्वान्दो", "अल्ट्रा-रनिङ", "साइक्लिङ"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Sports (Nepal)",
  ),
  Question(
    question:
        "कुन खेलमा 'पिसिङ' (Pitching) र 'ब्याटिङ' (Batting) शब्द प्रयोग हुन्छ?",
    questionEnglish: "In which game are 'Pitching' and 'Batting' terms used?",
    options: ["क्रिकेट", "फुटबल", "बेसबाल", "भलिबल"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Sports (World)",
  ),
  Question(
    question: "ओलम्पिक इतिहासमा सबैभन्दा धेरै पदक जित्ने व्यक्ति को हुन्?",
    questionEnglish: "Who is the most decorated Olympian in history?",
    options: ["उसैन बोल्ट", "माइकल फेल्प्स", "लारिसा लाटिनिना", "कार्ल लुईस"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Sports (World)",
  ),

  // IQ - 4 questions
  Question(
    question:
        "एउटा मान्छेले २० दिनसम्म लगातार काम गर्यो तर कामदारको हातमा कुनै पैसा आएन। यो कसरी सम्भव छ?",
    questionEnglish:
        "A man worked for 20 consecutive days but received no money in hand. How is this possible?",
    options: [
      "उसले बिदामा काम गर्यो",
      "उसलाई भुक्तानी पछि मात्र दिइन्छ",
      "उसले सुतेको बेला काम गर्यो",
      "ऊ एक शिक्षक थियो",
    ],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "IQ",
  ),
  Question(
    question:
        "म सधैँ तिम्रो पछाडि हुन्छु तर तिमीले मलाई देख्न सक्दैनौ। म को हुँ?",
    questionEnglish: "I am always behind you, but you cannot see me. Who am I?",
    options: ["समय", "भविष्य", "अतीत", "छाया"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "IQ",
  ),
  Question(
    question: "कुन कुराले तपाईंलाई कम बोल्न लगाउँछ?",
    questionEnglish: "What makes you speak less?",
    options: ["डर", "लाज", "चुपचाप (Silence)", "निन्द्रा"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "IQ",
  ),
  Question(
    question: "मलाई जति धेरै फाल्यो, त्यति नै म बलियो बन्छु। म को हुँ?",
    questionEnglish: "The more you throw me, the stronger I get. Who am I?",
    options: ["फलाम", "माटो", "बल", "ज्ञान"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "IQ",
  ),

  // Religion - 2 questions
  Question(
    question: "हिन्दु धर्ममा 'कर्मयोग' को अर्थ के हो?",
    questionEnglish: "What is the meaning of 'Karma Yoga' in Hinduism?",
    options: [
      "ध्यान गरेर मोक्ष प्राप्त गर्नु",
      "फलको आशा नगरी कर्तव्य पालन गर्नु",
      "पूजापाठ गर्नु",
      "सेवा गर्नु",
    ],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Religion",
  ),
  Question(
    question: "बौद्ध धर्ममा 'निर्वाण' (Nirvana) ले के जनाउँछ?",
    questionEnglish: "What does 'Nirvana' signify in Buddhism?",
    options: [
      "स्वर्गमा जानु",
      "पुनर्जन्मको अन्त्य र दुःखको समाप्ति",
      "धन प्राप्त गर्नु",
      "शक्ति प्राप्त गर्नु",
    ],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Religion",
  ),

  // Language - 2 questions
  Question(
    question: "नेपाली भाषामा 'सन्धि' भनेको के हो?",
    questionEnglish:
        "What is 'Sandhi' (Junction/Combination) in Nepali language?",
    options: [
      "दुई शब्दको जोड",
      "दुई वाक्यको जोड",
      "दुई वर्णहरूको मेलबाट हुने परिवर्तन",
      "अक्षरको मेल",
    ],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Language",
  ),
  Question(
    question: "'शिशु' शब्दको समानार्थी शब्द कुन होइन?",
    questionEnglish: "Which word is not a synonym of 'Shishu' (Infant)?",
    options: ["बालक", "बच्चा", "केटा", "नभजात"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Language",
  ),

  // Others - 6 questions
  Question(
    question: "मानव शरीरमा सबैभन्दा धेरै मात्रामा पाइने रासायनिक तत्व कुन हो?",
    questionEnglish:
        "What is the most abundant chemical element in the human body?",
    options: ["कार्बन", "हाइड्रोजन", "अक्सिजन", "नाइट्रोजन"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Others",
  ),
  Question(
    question: "कुन ग्रहलाई 'बिहानीको तारा' वा 'साँझको तारा' भनिन्छ?",
    questionEnglish:
        "Which planet is called the 'Morning Star' or 'Evening Star'?",
    options: ["मंगल", "शुक्र", "बृहस्पति", "शनि"],
    correctAnswerIndex: 1,
    gameLevel: 7,
    category: "Others",
  ),
  Question(
    question: "पृथ्वीको वायुमण्डलमा सबैभन्दा माथिल्लो तह कुन हो?",
    questionEnglish: "What is the outermost layer of Earth's atmosphere?",
    options: ["स्ट्र्याटोस्फियर", "मेसोस्फियर", "थर्मोस्फियर", "एक्सोस्फियर"],
    correctAnswerIndex: 3,
    gameLevel: 7,
    category: "Others",
  ),
  Question(
    question: "विश्वको सबैभन्दा अग्लो बाँध (Dam) कुन हो?",
    questionEnglish: "What is the tallest dam in the world?",
    options: [
      "थ्री गर्जेज ड्याम (चीन)",
      "नुअ्रेक ड्याम (ताजिकिस्तान)",
      "ग्र्याण्ड कुली ड्याम (अमेरिका)",
      "जिनपिङ-१ ड्याम (चीन)",
    ],
    correctAnswerIndex:
        1, // Nurek Dam (Tajikistan) is often cited as the tallest. Check for updates, as dam heights can be debated by structure vs arch.
    gameLevel: 7,
    category: "Others",
  ),
  Question(
    question: "सन् २०२४ को ओलम्पिक खेलकुद कहाँ आयोजना हुँदैछ?",
    questionEnglish: "Where are the 2024 Olympic Games being held?",
    options: ["टोकियो", "लस एन्जलस", "पेरिस", "रोम"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Others",
  ),
  Question(
    question: "कुन उपकरणले विद्युत ऊर्जालाई यान्त्रिक ऊर्जामा रूपान्तरण गर्छ?",
    questionEnglish:
        "Which device converts electrical energy into mechanical energy?",
    options: ["जेनेरेटर", "ब्याट्री", "मोटर", "ट्रान्सफर्मर"],
    correctAnswerIndex: 2,
    gameLevel: 7,
    category: "Others",
  ),
];
