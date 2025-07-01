
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

// All geography questions, randomly mixed with IDs starting from 1
List<Question> geographyQuestions = [
    // Nepali Geography - Easy Questions - 2 Options
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको सबभन्दा अग्लो हिमाल कुन हो? (Which is the highest mountain in Nepal?)", options: ["कञ्चनजङ्घा (Kangchenjunga)", "सगरमाथा (Mount Everest)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "विश्वको सबभन्दा ठूलो महासागर कुन हो? (Which is the largest ocean in the world?)", options: ["आर्कटिक महासागर (Arctic Ocean)", "प्रशान्त महासागर (Pacific Ocean)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको राजधानी शहर कुन हो? (What is the capital city of Nepal?)", options: ["पोखरा (Pokhara)", "काठमाडौं (Kathmandu)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको भौगोलिक अवस्था कस्तो छ? (What is the geographical state of Nepal?)", options: ["समुद्रले घेरिएको (Surrounded by sea)", "भू-परिवेष्टित (Landlocked)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "राप्ती नदी कुन प्रदेशमा पर्छ? (In which province is the Rapti River located?)", options: ["गण्डकी प्रदेश (Gandaki Province)", "लुम्बिनी प्रदेश (Lumbini Province)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको सबभन्दा ठूलो ताल कुन हो? (Which is the largest lake in Nepal?)", options: ["फेवा ताल (Phewa Lake)", "रारा ताल (Rara Lake)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको सबभन्दा तल्लो भूभाग कुन हो? (What is the lowest point in Nepal?)", options: ["चन्द्रगढी (Chandragadhi)", "केचनाकलन (Kechana Kalan)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको कुन क्षेत्रमा मरुभूमि पाइन्छ? (Which region of Nepal has deserts?)", options: ["तराई (Terai)", "नेपालमा मरुभूमि छैन (Nepal has no deserts)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "कोशी नदी नेपालको कुन दिशामा बग्छ? (In which direction does the Koshi River flow in Nepal?)", options: ["पश्चिम (West)", "पूर्व (East)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालमा 'भावर' क्षेत्र भनेको के हो? (What is the 'Bhabar' region in Nepal?)", options: ["पहाडी क्षेत्र (Hilly region)", "शिवालिकको फेदको क्षेत्र (Foot-hill region of Siwaliks)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको उत्तरमा कुन देश पर्छ? (Which country lies to the north of Nepal?)", options: ["भारत (India)", "चीन (China)"], answerIndex: 1),

    // Nepali Geography - Medium Questions - 3-4 Options
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालमा कतिवटा प्रदेश छन्? (How many provinces are there in Nepal?)", options: ["५ (5)", "७ (7)", "९ (9)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "सगरमाथा कुन हिमशृङ्खलामा पर्छ? (In which mountain range is Mount Everest located?)", options: ["हिमालय (Himalaya)", "काराकोरम (Karakoram)", "अल्प्स (Alps)"], answerIndex: 0),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको सबभन्दा लामो नदी कुन हो? (Which is the longest river in Nepal?)", options: ["कर्णाली (Karnali)", "कोशी (Koshi)", "गण्डकी (Gandaki)"], answerIndex: 0),
    Question(id: 0, category: "Nepali Geography", questionText: "चितवन राष्ट्रिय निकुञ्ज कुन भौगोलिक क्षेत्रमा अवस्थित छ? (In which geographical region is Chitwan National Park located?)", options: ["हिमाली क्षेत्र (Himalayan region)", "पहाडी क्षेत्र (Hilly region)", "तराई क्षेत्र (Terai region)"], answerIndex: 2),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपाललाई कति मुख्य भौगोलिक क्षेत्रमा विभाजन गरिएको छ? (Into how many main geographical regions is Nepal divided?)", options: ["२ (2)", "३ (3)", "४ (4)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "गुल्मी जिल्ला नेपालको कुन प्रदेशमा पर्छ? (In which province is Gulmi district located?)", options: ["बागमती प्रदेश (Bagmati Province)", "लुम्बिनी प्रदेश (Lumbini Province)", "गण्डकी प्रदेश (Gandaki Province)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको एकमात्र मरुभूमिजस्तो क्षेत्र कुन हो? (What is Nepal's only desert-like region?)", options: ["मुस्ताङ (Mustang)", "सोलुखुम्बु (Solukhumbu)", "डोल्पा (Dolpa)"], answerIndex: 0),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको सुदूरपश्चिम प्रदेशको राजधानी कुन हो? (What is the capital of Sudurpashchim Province of Nepal?)", options: ["धनगढी (Dhangadhi)", "महेन्द्रनगर (Mahendranagar)", "दिपायल (Dipayal)"], answerIndex: 0),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको सबभन्दा ठूलो राष्ट्रिय निकुञ्ज कुन हो? (Which is the largest national park in Nepal?)", options: ["बर्दिया राष्ट्रिय निकुञ्ज (Bardia National Park)", "सगरमाथा राष्ट्रिय निकुञ्ज (Sagarmatha National Park)", "शे-फोक्सुण्डो राष्ट्रिय निकुञ्ज (Shey Phoksundo National Park)"], answerIndex: 2),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको कुन जिल्ला चिया खेतीका लागि प्रसिद्ध छ? (Which district of Nepal is famous for tea cultivation?)", options: ["इलाम (Ilam)", "झापा (Jhapa)", "ताप्लेजुङ (Taplejung)"], answerIndex: 0),
    Question(id: 0, category: "World Geography", questionText: "माउन्ट किलिमञ्जारो कुन महादेशमा अवस्थित छ? (On which continent is Mount Kilimanjaro located?)", options: ["एसिया (Asia)", "अफ्रिका (Africa)", "युरोप (Europe)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "विश्वको सबभन्दा ठूलो द्वीपसमूह (archipelago) कुन हो? (Which is the largest archipelago in the world?)", options: ["जापान (Japan)", "इन्डोनेसिया (Indonesia)", "फिलिपिन्स (Philippines)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "ग्रेट ब्यारियर रीफ (Great Barrier Reef) कुन देशको तटमा अवस्थित छ? (On the coast of which country is the Great Barrier Reef located?)", options: ["भारत (India)", "अष्ट्रेलिया (Australia)", "क्यानडा (Canada)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "एन्डिज पर्वतमाला (Andes Mountains) कुन महादेशमा पर्छ? (On which continent are the Andes Mountains located?)", options: ["उत्तर अमेरिका (North America)", "दक्षिण अमेरिका (South America)", "अफ्रिका (Africa)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "विश्वको सबभन्दा सानो देश कुन हो? (Which is the smallest country in the world?)", options: ["मोनाको (Monaco)", "भ्याटिकन सिटी (Vatican City)", "नाउरु (Nauru)"], answerIndex: 1),

    // Nepali Geography - Hard Questions - 4-5 Options
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको भौगोलिक क्षेत्र अनुसार, 'चुरे' पहाड कुन क्षेत्रमा पर्छ? (According to Nepal's geographical regions, in which region do the 'Chure' hills fall?)", options: ["हिमाली क्षेत्र (Himalayan Region)", "महाभारत लेक (Mahabharat Lekh)", "भित्री मधेश (Inner Terai)", "शिवालिक (Siwalik)", "तराई (Terai)"], answerIndex: 3),
    Question(id: 0, category: "Nepali Geography", questionText: "काठमाडौँ उपत्यका कुन भू-वैज्ञानिक संरचनामा अवस्थित छ? (Kathmandu Valley is located in which geological structure?)", options: ["अल्काली चट्टान (Alkali rocks)", "टेक्टोनिक प्लेटको टकराव (Collision of tectonic plates)", "प्राचीन तालको अवशेष (Remains of an ancient lake)", "ज्वालामुखी क्रेटर (Volcanic crater)", "नदीको बगेको मैदान (Riverine plain)"], answerIndex: 2),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालमा सबभन्दा धेरै वर्षा हुने ठाउँ कुन हो? (Which is the place with the highest rainfall in Nepal?)", options: ["काठमाडौं (Kathmandu)", "पोखरा (Pokhara)", "भैरहवा (Bhairahawa)", "इलाम (Ilam)", "दाङ (Dang)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "कुन हिमाललाई 'सगरमाथाको छिमेकी' भनिन्छ र यो नेपालमा पर्छ? (Which mountain is called 'Neighbor of Everest' and is located in Nepal?)", options: ["कञ्चनजङ्घा (Kangchenjunga)", "ल्होत्से (Lhotse)", "मकालु (Makalu)", "चो ओयु (Cho Oyu)", "अन्नपूर्ण (Annapurna)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको कुन जिल्लालाई 'जिल्लाको रानी' भनेर चिनिन्छ, यसको सुन्दरताका कारण? (Which district of Nepal is known as 'Queen of Districts' due to its beauty?)", options: ["कास्की (Kaski)", "इलाम (Ilam)", "पाल्पा (Palpa)", "दोलखा (Dolakha)", "लमजुङ (Lamjung)"], answerIndex: 2),
    Question(id: 0, category: "Nepali Geography", questionText: "काठमाडौं उपत्यकालाई पानीको स्रोतको आधारमा वर्गीकरण गर्दा, यो कुन नदी प्रणालीको हिस्सा हो? (When classifying Kathmandu Valley based on water sources, which river system is it a part of?)", options: ["गण्डकी (Gandaki)", "कोशी (Koshi)", "बागमती (Bagmati)", "कर्णाली (Karnali)", "महाकाली (Mahakali)"], answerIndex: 2),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालमा 'भित्री मधेश' भन्नाले कुन क्षेत्रलाई बुझिन्छ? (What region is referred to as 'Inner Terai' in Nepal?)", options: ["तराईको पश्चिमी भाग (Western part of Terai)", "शिवालिक र महाभारत रेञ्जको बीचको उपत्यका (Valleys between Siwalik and Mahabharat Range)", "हिमाली क्षेत्रका उपत्यका (Valleys in Himalayan region)", "तराईको पूर्वी भाग (Eastern part of Terai)", "पहाडी क्षेत्रको उच्च भूभाग (Highlands of Hilly region)"], answerIndex: 1),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको कुन ताल 'ब्लु लेक' भनेर पनि चिनिन्छ, यसको अनौठो नीलो रंगका कारण? (Which lake in Nepal is also known as 'Blue Lake' due to its unique blue color?)", options: ["फेवा ताल (Phewa Lake)", "तिलिचो ताल (Tilicho Lake)", "गोक्यो ताल (Gokyo Lake)", "रारा ताल (Rara Lake)", "माई पोखरी (Mai Pokhari)"], answerIndex: 3), // Rara is often called blue, Tilicho is also blue. Rara is more widely known as "Blue Lake of Nepal".
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको कुन संरक्षित क्षेत्र 'एक सिङ्गे गैंडा' (one-horned rhino) को लागि प्रसिद्ध छ? (Which protected area in Nepal is famous for the 'one-horned rhino'?)", options: ["शे-फोक्सुण्डो राष्ट्रिय निकुञ्ज (Shey Phoksundo National Park)", "लाङटाङ राष्ट्रिय निकुञ्ज (Langtang National Park)", "चितवन राष्ट्रिय निकुञ्ज (Chitwan National Park)", "बर्दिया राष्ट्रिय निकुञ्ज (Bardia National Park)", "शिवपुरी-नागार्जुन राष्ट्रिय निकुञ्ज (Shivapuri-Nagarjun National Park)"], answerIndex: 2),
    Question(id: 0, category: "Nepali Geography", questionText: "नेपालको कुन जिल्लालाई 'नेपालको अन्न भण्डार' पनि भनिन्छ, यसको उच्च कृषि उत्पादनका कारण? (Which district of Nepal is also called 'Nepal's Granary' due to its high agricultural production?)", options: ["मोरङ (Morang)", "झापा (Jhapa)", "कैलाली (Kailali)", "बाँके (Banke)", "रूपन्देही (Rupandehi)"], answerIndex: 2), 
    Question(id: 0, category: "World Geography", questionText: "विश्वको सबभन्दा गहिरो महासागरीय खोंच (oceanic trench) कुन हो? (Which is the deepest oceanic trench in the world?)", options: ["टोंगा खोंच (Tonga Trench)", "जापान खोंच (Japan Trench)", "मारियाना खोंच (Mariana Trench)", "प्युर्टो रिको खोंच (Puerto Rico Trench)", "केर्मडेक खोंच (Kermadec Trench)"], answerIndex: 2),
    Question(id: 0, category: "World Geography", questionText: "कुन देशमा 'फ्योर्ड' (fjords) को सबभन्दा ठूलो संख्या पाइन्छ? (Which country has the largest number of 'fjords'?)", options: ["चिली (Chile)", "नर्वे (Norway)", "क्यानडा (Canada)", "न्युजिल्याण्ड (New Zealand)", "आइसल्याण्ड (Iceland)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "रुसको कुन भागले एसिया र युरोप दुवै महादेशको विशेषता समेट्छ? (Which part of Russia spans characteristics of both Asia and Europe?)", options: ["साइबेरिया (Siberia)", "ककासस क्षेत्र (Caucasus region)", "युराल पर्वत (Ural Mountains)", "भोल्गा नदी बेसिन (Volga River Basin)", "क्यालिनिनग्राद ओब्लास्ट (Kaliningrad Oblast)"], answerIndex: 2),
    Question(id: 0, category: "World Geography", questionText: "कुन शहर 'विश्वको छत' (Roof of the World) भनेर चिनिन्छ, यसको उच्च उचाइका कारण? (Which city is known as the 'Roof of the World' due to its high altitude?)", options: ["ल्हासा (Lhasa)", "काठमाडौं (Kathmandu)", "ला पाज (La Paz)", "थिम्पु (Thimphu)", "बोगाटा (Bogota)"], answerIndex: 0), // While La Paz is very high, Lhasa is more commonly associated with the "Roof of the World" due to Tibet.
    Question(id: 0, category: "World Geography", questionText: "'साउथ स्यान्डविच आइल्यान्ड्स' कुन महासागरमा अवस्थित छन्? ('South Sandwich Islands' are located in which ocean?)", options: ["आर्कटिक महासागर (Arctic Ocean)", "प्रशान्त महासागर (Pacific Ocean)", "एटलान्टिक महासागर (Atlantic Ocean)", "हिन्द महासागर (Indian Ocean)", "दक्षिणी महासागर (Southern Ocean)"], answerIndex: 4),
 // Kailali is one of the top granaries.
  ];

  List<Question> worldGeographyQuestions = [
    // World Geography - Easy Questions - 2 Options
    Question(id: 0, category: "World Geography", questionText: "इजिप्टको प्रसिद्ध पिरामिडहरू कुन शहर नजिक अवस्थित छन्? (Near which city are the famous pyramids of Egypt located?)", options: ["अलेक्जेन्ड्रिया (Alexandria)", "गिजा (Giza)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "विश्वको सबभन्दा लामो नदी कुन हो? (Which is the longest river in the world?)", options: ["अमेजन नदी (Amazon River)", "नाइल नदी (Nile River)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "संसारको सबभन्दा ठूलो मरुभूमि कुन हो? (Which is the largest desert in the world?)", options: ["गोबी मरुभूमि (Gobi Desert)", "सहारा मरुभूमि (Sahara Desert)"], answerIndex: 1),
    Question(id: 0, category: "World Geography", questionText: "फ्रान्सको राजधानी शहर कुन हो? (What is the capital city of France?)", options: ["रोम (Rome)", "पेरिस (Paris)"], answerIndex: 1),

    // World Geography - Medium Questions - 3-4 Options

    // World Geography - Hard Questions - 4-5 Options
 ];


