class Question {
  final String questionText;
  final List<String> options;
  final int answerIndex; 
  final int id;
  final String category;

  Question({
    required this.questionText,
    required this.options,
    required this.answerIndex, 
    required this.id,
    required this.category,
  });
}

final List<Question> scienceQuestions = [
  // Easy Questions - 2 Options
  Question(id: 1, category: "Science", questionText: " बिरुवाहरूलाई बढ्नको लागि सूर्यको प्रकाश चाहिन्छ। (Do plants need sunlight to grow?)", options: ["हो (Yes)", "होइन (No)"], answerIndex: 0),
  Question(id: 2, category: "Science", questionText: " कोठाको तापक्रममा पानी कुन पदार्थ हो? (What substance is water at room temperature??)", options: ["तरल(Liquid)", "ठोस (Solid)"], answerIndex: 0),
  Question(id: 4, category: "Science", questionText: "के पृथ्वी समतल छ? (Is the Earth flat?)", options: ["हो (Yes)", "होइन (No)"], answerIndex: 1),
  Question(id: 5, category: "Science", questionText: "माछाले फोक्सोबाट हावा फेर्छ ?(Do fish breathe air through lungs?)", options: ["हो (Yes)", "होइन (No)"], answerIndex: 1),

  // Easy Questions - 3 Options
  Question(id: 6, category: "Science", questionText: "मौरीले के बनाउँछ? (What do bees make?)", options: ["दूध (Milk)", "मह (Honey)", "रोटी (Bread)"], answerIndex: 1),
  Question(id: 7, category: "Science", questionText: "यी मध्ये कुन ग्यास हो? (Which of these is a gas?)", options: ["चट्टान (Rock)", "पानी (Water)", "अक्सिजन (Oxygen)"], answerIndex: 2),
  Question(id: 8, category: "Science", questionText: "स्याउलाई रूखबाट तल खसाल्ने के हो? (What makes an apple fall from a tree?)", options: ["हावा (Wind)", "गुरुत्वाकर्षण (Gravity)", "जादू (Magic)"], answerIndex: 1),
  Question(id: 9, category: "Science", questionText: "पृथ्वीको सबैभन्दा नजिकको तारा कुन हो? (Which is the closest star to Earth?)", options: ["चन्द्रमा (Moon)", "सूर्य (Sun)", "मंगल (Mars)"], answerIndex: 1),
  Question(id: 10, category: "Science", questionText: "बिरुवाको कुन भागले सूर्यको प्रकाश सोस्छ? (What part of a plant absorbs sunlight?)", options: ["जरा (Root)", "डाँठ (Stem)", "पात (Leaf)"], answerIndex: 2),
  Question(id: 11, category: "Science", questionText: "H2O को सामान्य नाम के हो? (What is the common name for H2O?)", options: ["नुन (Salt)", "चिनी (Sugar)", "पानी (Water)"], answerIndex: 2),
    Question(id: 13, category: "Science", questionText: "कुन ग्रहलाई 'रातो ग्रह' भनेर चिनिन्छ? (Which planet is known as the 'Red Planet'?)", options: ["शुक्र (Venus)", "मंगल (Mars)", "बृहस्पति (Jupiter)"], answerIndex: 1),
  Question(id: 14, category: "Science", questionText: "झुसिल्कीरा केमा परिणत हुन्छ? (What do caterpillars turn into?)", options: ["माकुरा (Spiders)", "पुतली (Butterflies)", "चरा (Birds)"], answerIndex: 1),
  Question(id: 15, category: "Science", questionText: "बरफलाई केले पगाल्छ? (What makes ice melt?)", options: ["चिसो (Cold)", "ताप (Heat)", "हावा (Wind)"], answerIndex: 1),

  // Gradually increasing difficulty - 4 Options
  Question(id: 16, category: "Science", questionText: "बिरुवाहरूले आफ्नो खाना बनाउने प्रक्रियालाई के भनिन्छ? (What is the process called when plants make their own food?)", options: ["श्वसन (Respiration)", "पाचन (Digestion)", "प्रकाश संश्लेषण (Photosynthesis)", "अंकुरण (Germination)"], answerIndex: 2),
  Question(id: 17, category: "Science", questionText: "मानव श्वासप्रश्वासका लागि कुन तत्व आवश्यक छ? (Which element is essential for human respiration?)", options: ["नाइट्रोजन (Nitrogen)", "कार्बन डाइअक्साइड (Carbon Dioxide)", "हाइड्रोजन (Hydrogen)", "अक्सिजन (Oxygen)"], answerIndex: 3),
  Question(id: 18, category: "Science", questionText: "बलको एकाइ के हो? (What is the unit of force?)", options: ["भोल्ट (Volt)", "एम्पीयर (Ampere)", "न्युटन (Newton)", "वाट (Watt)"], answerIndex: 2),
  Question(id: 19, category: "Science", questionText: "हाम्रो सौर्यमण्डलमा सबैभन्दा ठूलो ग्रह कुन हो? (What is the largest planet in our solar system?)", options: ["पृथ्वी (Earth)", "मंगल (Mars)", "शनि (Saturn)", "बृहस्पति (Jupiter)"], answerIndex: 3),
  Question(id: 20, category: "Science", questionText: "शरीरभर रगत पम्प गर्ने अंग कुन हो? (Which organ pumps blood throughout the body?)", options: ["फोक्सो (Lungs)", "मस्तिष्क (Brain)", "पेट (Stomach)", "मुटु (Heart)"], answerIndex: 3),
  Question(id: 21, category: "Science", questionText: "सुनको रासायनिक प्रतीक के हो? (What is the chemical symbol for gold?)", options: ["Ag", "Fe", "Au (Gold)", "Cu"], answerIndex: 2),
  Question(id: 22, category: "Science", questionText: "भ्याकुममा प्रकाशको गति (लगभग) कति हुन्छ? (What is the speed of light in a vacuum?)", options: ["300 m/s", "3000 km/s", "300,000 km/s", "3,000,000 m/s"], answerIndex: 2),
  Question(id: 23, category: "Science", questionText: "हाम्रो सौर्यमण्डल कुन आकाशगंगाको भाग हो? (Which galaxy is our solar system a part of?)", options: ["एन्ड्रोमेडा (Andromeda)", "ट्रायङ्गुलम (Triangulum)", "पिनव्हील (Pinwheel)", "मिल्की वे (Milky Way)"], answerIndex: 3),
  Question(id: 24, category: "Science", questionText: "रातो रक्त कोशिकाको मुख्य कार्य के हो? (What is the primary function of red blood cells?)", options: ["संक्रमणसँग लड्ने (Fighting infections)", "रगत जम्ने (Clotting blood)", "अक्सिजन बोक्ने (Carrying oxygen)", "खाना पचाउने (Digesting food)"], answerIndex: 2),
  Question(id: 25, category: "Science", questionText: "एक तटस्थ घोलको pH स्तर कति हुन्छ? (What is the pH level of a neutral solution?)", options: ["0", "7", "14", "10"], answerIndex: 1),
  Question(id: 26, category: "Science", questionText: "गतिको साथ सम्बन्धित ऊर्जाको रूप कुन हो? (Which form of energy is associated with motion?)", options: ["स्थितिज ऊर्जा (Potential energy)", "रासायनिक ऊर्जा (Chemical energy)", "गतिज ऊर्जा (Kinetic energy)", "तापीय ऊर्जा (Thermal energy)"], answerIndex: 2),
  Question(id: 27, category: "Science", questionText: "एउटा 'सुटिङ स्टार' वास्तवमा के हो? (What is a 'shooting star' actually?)", options: ["खसेको तारा (A star falling)", "एक धूमकेतु (A comet)", "जलेको उल्कापिण्ड (A meteorite burning up)", "एक क्षुद्रग्रह (An asteroid)"], answerIndex: 2),
  Question(id: 28, category: "Science", questionText: "कुन जनावरले कायापलट गर्छ? (Which animal undergoes metamorphosis?)", options: ["कुकुर (Dog)", "बिरालो (Cat)", "भ्यागुतो (Frog)", "कुखुरा (Chicken)"], answerIndex: 2),
  Question(id: 29, category: "Science", questionText: "कुन सामान्य पदार्थ बिजुलीको राम्रो संवाहक हो? (Which common substance is a good conductor of electricity?)", options: ["काठ (Wood)", "प्लास्टिक (Plastic)", "तामा (Copper)", "रबर (Rubber)"], answerIndex: 2),
  Question(id: 30, category: "Science", questionText: "तापमानको लागि SI एकाइ के हो? (What is the SI unit for temperature?)", options: ["फारेनहाइट (Fahrenheit)", "सेल्सियस (Celsius)", "केल्भिन (Kelvin)", "र्याङ्काइन (Rankine)"], answerIndex: 2),
  Question(id: 31, category: "Science", questionText: "पृथ्वीको ऋतुहरू के कारणले हुन्छन्? (What causes the Earth's seasons?)", options: ["सूर्यबाट दूरी (Distance from Sun)", "चन्द्रमाको परिक्रमा (Moon's orbit)", "पृथ्वीको झुकाव (Earth's tilt)", "सौर ज्वाला (Solar flares)"], answerIndex: 2),
  Question(id: 32, category: "Science", questionText: "कंकालको मुख्य कार्य के हो? (What is the main function of the skeleton?)", options: ["पाचन (Digestion)", "समर्थन र सुरक्षा (Support and protection)", "श्वासप्रश्वास (Breathing)", "रगत पम्प गर्ने (Pumping blood)"], answerIndex: 1),
  Question(id: 33, category: "Science", questionText: "बिरुवाहरूले वायुमण्डलबाट कुन ग्यास सोस्छन्? (Which gas do plants absorb from the atmosphere?)", options: ["अक्सिजन (Oxygen)", "नाइट्रोजन (Nitrogen)", "कार्बन डाइअक्साइड (Carbon Dioxide)", "हाइड्रोजन (Hydrogen)"], answerIndex: 2),
  Question(id: 34, category: "Science", questionText: "गतिलाई प्रतिरोध गर्ने बल के हो? (What is the force that opposes motion?)", options: ["धक्का (Push)", "तान (Pull)", "घर्षण (Friction)", "गुरुत्वाकर्षण (Gravity)"], answerIndex: 2),
  Question(id: 35, category: "Science", questionText: "गुरुत्वाकर्षणले एकसाथ राखेका तारा, ग्यास र धुलोको ठूलो संग्रहलाई के भनिन्छ? (What are large collections of stars, gas, and dust held together by gravity called?)", options: ["ग्रहहरू (Planets)", "धूमकेतुहरू (Comets)", "आकाशगंगाहरू (Galaxies)", "नेबुला (Nebulae)"], answerIndex: 2),
  Question(id: 36, category: "Science", questionText: "जीवनको सबैभन्दा सानो एकाइ के हो? (What is the smallest unit of life?)", options: ["अंग (Organ)", "टिस्यु (Tissue)", "अणु (Molecule)", "कोष (Cell)"], answerIndex: 3),
  Question(id: 37, category: "Science", questionText: "तरल पदार्थ ग्यासमा परिणत हुने प्रक्रियालाई के भनिन्छ? (What is the process of a liquid turning into a gas called?)", options: ["पग्लने (Melting)", "जम्ने (Freezing)", "घनकरण (Condensation)", "वाष्पीकरण (Evaporation)"], answerIndex: 3),
  Question(id: 38, category: "Science", questionText: "तानेको स्प्रिङमा कुन प्रकारको ऊर्जा भण्डारण हुन्छ? (Which type of energy is stored in a stretched spring?)", options: ["गतिज (Kinetic)", "तापीय (Thermal)", "स्थितिज (Potential)", "ध्वनि (Sound)"], answerIndex: 2),
  Question(id: 39, category: "Science", questionText: "चन्द्रमाले सूर्यको प्रकाशलाई रोक्ने घटनालाई के भनिन्छ? (What is the name of the phenomenon where the Moon blocks the Sun's light?)", options: ["चन्द्रग्रहण (Lunar eclipse)", "सौर ज्वाला (Solar flare)", "उल्का वर्षा (Meteor shower)", "सूर्यग्रहण (Solar eclipse)"], answerIndex: 3),
  Question(id: 40, category: "Science", questionText: "मस्तिष्कको कुन भाग सन्तुलन र समन्वयका लागि जिम्मेवार छ? (Which part of the brain is responsible for balance and coordination?)", options: ["सेरेब्रम (Cerebrum)", "ब्रेनस्टेम (Brainstem)", "सेरेबेलम (Cerebellum)", "हाइपोथालेमस (Hypothalamus)"], answerIndex: 2),
  Question(id: 42, category: "Science", questionText: "कुन सिद्धान्तले भन्छ कि आराममा रहेको वस्तु आराममा नै रहन्छ र गतिमा रहेको वस्तु उही गतिमा र उही दिशामा गतिमा रहन्छ जबसम्म असन्तुलित बलद्वारा कार्य गरिँदैन? (What is the principle that states that an object at rest stays at rest and an object in motion stays in motion with the same speed and in the same direction unless acted upon by an unbalanced force?)", options: ["न्युटनको दोस्रो नियम (Newton's Second Law)", "न्युटनको तेस्रो नियम (Newton's Third Law)", "ऊर्जा संरक्षणको नियम (Law of Conservation of Energy)", "न्युटनको पहिलो नियम (Newton's First Law)"], answerIndex: 3),
  Question(id: 43, category: "Science", questionText: "शनिको वलयहरू मुख्यतया के मिलेर बनेका हुन्छन्? (What are the rings of Saturn primarily made of?)", options: ["ठोस चट्टान (Solid rock)", "पग्लिएको लाभा (Molten lava)", "बरफका कणहरू र चट्टानका टुक्राहरू (Ice particles and rock fragments)", "वायुमण्डलीय ग्यासहरू (Atmospheric gases)"], answerIndex: 2),
  Question(id: 44, category: "Science", questionText: "यी मध्ये कुन पारिस्थितिकी प्रणालीमा अपघटक हो? (Which of these is a decomposer in an ecosystem?)", options: ["रूख (Tree)", "हरिण (Deer)", "च्याउ (Mushroom)", "घाँस (Grass)"], answerIndex: 2),
  Question(id: 45, category: "Science", questionText: "कुन प्रकारको रासायनिक बन्धनमा परमाणुहरू बीच इलेक्ट्रोन जोडीको साझेदारी समावेश हुन्छ? (What type of chemical bond involves the sharing of electron pairs between atoms?)", options: ["आयनिक बन्धन (Ionic bond)", "धातु बन्धन (Metallic bond)", "हाइड्रोजन बन्धन (Hydrogen bond)", "सहसंयोजक बन्धन (Covalent bond)"], answerIndex: 3),
  Question(id: 46, category: "Science", questionText: "बल्ब बाल्दा कुन ऊर्जा रूपान्तरण हुन्छ? (Which energy transformation occurs when a light bulb is turned on?)", options: ["रासायनिकबाट गतिज (Chemical to kinetic)", "यान्त्रिकबाट ध्वनि (Mechanical to sound)", "विद्युतीयबाट प्रकाश र ताप (Electrical to light and heat)", "तापीयबाट स्थितिज (Thermal to potential)"], answerIndex: 2),
  Question(id: 47, category: "Science", questionText: "ब्ल्याक होलबाट केही पनि, प्रकाश समेत, उम्कन नसक्ने सीमाको नाम के हो? (What is the name of the boundary beyond which nothing, not even light, can escape a black hole?)", options: ["सिंगुलारिटी (Singularity)", "एक्रिसन डिस्क (Accretion disk)", "इभेन्ट होराइजन (Event horizon)", "फोटोन स्फेयर (Photon sphere)"], answerIndex: 2),
  Question(id: 48, category: "Science", questionText: "DNA को मुख्य कार्य के हो? (What is the primary function of DNA?)", options: ["कोषको लागि ऊर्जा प्रदान गर्न (To provide energy for the cell)", "रगतमा अक्सिजन ढुवानी गर्न (To transport oxygen in the blood)", "आनुवंशिक जानकारी बोक्न (To carry genetic information)", "मांसपेशीको तन्तु निर्माण गर्न (To build muscle tissue)"], answerIndex: 2),
  Question(id: 49, category: "Science", questionText: "ठोस पदार्थ तरल अवस्थाबाट नजाँदै सीधा ग्यासमा परिणत हुने प्रक्रियालाई के भनिन्छ? (What is the process called where a solid turns directly into a gas without passing through a liquid phase?)", options: ["पग्लने (Melting)", "वाष्पीकरण (Evaporation)", "उर्ध्वपातन (Sublimation)", "घनकरण (Condensation)"], answerIndex: 2),
  Question(id: 50, category: "Science", questionText: "ओमको नियम अनुसार, भोल्टेज (V), करेन्ट (I), र प्रतिरोध (R) बीचको सम्बन्ध के हो? (According to Ohm's Law, what is the relationship between voltage (V), current (I), and resistance (R)?)", options: ["V = I/R", "I = V*R", "R = V*I", "V = I*R"], answerIndex: 3),
];

