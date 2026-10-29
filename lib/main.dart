import 'package:flutter/material.dart';

void main() {
  runApp(const KhaledAndAishaApp());
}

class KhaledAndAishaApp extends StatelessWidget {
  const KhaledAndAishaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'خالد وعائشة',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF100D17),
      ),
      home: const GameScreen(),
    );
  }
}

class StoryChoice {
  final String text;
  final int nextScene;
  final int hearts;

  const StoryChoice({
    required this.text,
    required this.nextScene,
    this.hearts = 1,
  });
}

class StoryScene {
  final String image;
  final String location;
  final String character;
  final String dialogue;
  final List<StoryChoice> choices;

  const StoryScene({
    required this.image,
    required this.location,
    required this.character,
    required this.dialogue,
    required this.choices,
  });
}

const List<StoryScene> story = [
  StoryScene(
    image: 'assets/2c6f571857_51ed988.jpg',
    location: 'غرفة المعيشة',
    character: 'خالد',
    dialogue:
        'كانت ليلة هادئة، عاد خالد إلى البيت بعد يوم طويل. كان أول شيء يفكر فيه هو عائشة، زوجته وحبيبته.',
    choices: [
      StoryChoice(
        text: 'أذهب للبحث عن عائشة ❤️',
        nextScene: 1,
        hearts: 2,
      ),
      StoryChoice(
        text: 'أجلس قليلًا على الأريكة',
        nextScene: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/92ee2c1520_1da435a.jpg',
    location: 'داخل المنزل',
    character: 'عائشة',
    dialogue:
        'كانت عائشة تنتظر خالد. وما إن رأته حتى ابتسمت وقالت: تأخرت عليّ اليوم يا حبيبي، اشتقت لك كثيرًا.',
    choices: [
      StoryChoice(
        text: 'أقترب منها وأحتضنها بحنان 🫂',
        nextScene: 3,
        hearts: 3,
      ),
      StoryChoice(
        text: 'أقول لها: وحشتيني يا عيشتي ❤️',
        nextScene: 4,
        hearts: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/f6cea6d49f7_7a11237.jpg',
    location: 'الأريكة',
    character: 'خالد',
    dialogue:
        'جلس خالد على الأريكة قليلًا، ثم تذكر أن عائشة ربما تنتظره. ابتسم ونهض ليذهب إليها.',
    choices: [
      StoryChoice(
        text: 'أذهب إلى عائشة',
        nextScene: 1,
        hearts: 1,
      ),
      StoryChoice(
        text: 'أرسل لها رسالة حب',
        nextScene: 4,
        hearts: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/1793242875662.jpg',
    location: 'لحظة حب',
    character: 'خالد وعائشة',
    dialogue:
        'ضمّ خالد عائشة إلى صدره وقال: مهما كان يومي متعبًا، يكفيني أن أعود إليكِ. ابتسمت عائشة وشعرت بالأمان بين ذراعيه.',
    choices: [
      StoryChoice(
        text: 'أقبّل جبينها بحنان 😘',
        nextScene: 5,
        hearts: 3,
      ),
      StoryChoice(
        text: 'نجلس معًا ونتحدث عن يومنا',
        nextScene: 6,
        hearts: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/92ee2c1520_1da435a.jpg',
    location: 'حديث بين الزوجين',
    character: 'عائشة',
    dialogue:
        'قالت عائشة بخجل: خالد، تعرف إيش أكثر شيء أحبه فيك؟ أحب أنك تجعلني أشعر أنني أغلى إنسانة في حياتك.',
    choices: [
      StoryChoice(
        text: 'أقول لها: أنتِ أغلى ما أملك',
        nextScene: 3,
        hearts: 3,
      ),
      StoryChoice(
        text: 'أسألها: إيش أكثر شيء يسعدك؟',
        nextScene: 6,
        hearts: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/1793243603804.jpg',
    location: 'وقت الراحة',
    character: 'خالد وعائشة',
    dialogue:
        'جلس الزوجان متعانقين، يتبادلان الكلمات الجميلة والابتسامات. لم يحتاجا إلى شيء كبير؛ كان قرب كل واحد منهما من الآخر كافيًا.',
    choices: [
      StoryChoice(
        text: 'نقضي وقتًا رومانسيًا معًا ❤️',
        nextScene: 7,
        hearts: 3,
      ),
      StoryChoice(
        text: 'أحكي لها قصة من طفولتي',
        nextScene: 6,
        hearts: 1,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/1793242967066.jpg',
    location: 'غرفة النوم',
    character: 'عائشة',
    dialogue:
        'في نهاية اليوم، استعدت عائشة للراحة. نظرت إلى خالد وقالت: أتمنى أن تبقى أيامنا مليئة بالمحبة، مهما تغيرت الحياة.',
    choices: [
      StoryChoice(
        text: 'أطمئنها وأمسك يدها',
        nextScene: 7,
        hearts: 2,
      ),
      StoryChoice(
        text: 'أخبرها عن حلمنا للمستقبل',
        nextScene: 8,
        hearts: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/35eedfaf892_3f3592.jpg',
    location: 'ليلة رومانسية',
    character: 'خالد وعائشة',
    dialogue:
        'تحت أجواء الغرفة الهادئة والورود، اقترب الزوجان من بعضهما وتبادلا قبلة حنونة. كانت ليلتهما خاصة بهما، مليئة بالحب والطمأنينة.',
    choices: [
      StoryChoice(
        text: 'نواصل ليلتنا في أجواء هادئة 🌹',
        nextScene: 9,
        hearts: 3,
      ),
      StoryChoice(
        text: 'أقول لها: أحبك يا عيشتي',
        nextScene: 8,
        hearts: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/1793243411588.jpg',
    location: 'أحلام المستقبل',
    character: 'خالد',
    dialogue:
        'نظر خالد إلى عائشة وقال: أتمنى أن نبني بيتًا مليئًا بالسعادة، ونحقق أحلامنا معًا، وأبقى دائمًا الشخص الذي تجدين عنده راحتك.',
    choices: [
      StoryChoice(
        text: 'أبدأ فصلًا جديدًا من قصتنا',
        nextScene: 0,
        hearts: 2,
      ),
      StoryChoice(
        text: 'أعود إلى عائشة وأحتضنها',
        nextScene: 3,
        hearts: 2,
      ),
    ],
  ),
  StoryScene(
    image: 'assets/1793243914394.jpg',
    location: 'نهاية اليوم',
    character: 'خالد وعائشة',
    dialogue:
        'انتهى اليوم وهما بجانب بعضهما. تبادلا كلمات الحب، ثم استعدا للنوم والراحة. كانت هذه ليلة أخرى في حكاية حب لم تنتهِ بعد.',
    choices: [
      StoryChoice(
        text: 'ابدأ يومًا جديدًا مع عائشة ❤️',
        nextScene: 0,
        hearts: 3,
      ),
      StoryChoice(
        text: 'أعود إلى لحظة العناق',
        nextScene: 3,
        hearts: 2,
      ),
    ],
  ),
];

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int currentScene = 0;
  int hearts = 0;
  int chapter = 1;

  void choose(StoryChoice choice) {
    setState(() {
      hearts += choice.hearts;
      currentScene = choice.nextScene;
      chapter++;
    });
  }

  void restartGame() {
    setState(() {
      currentScene = 0;
      hearts = 0;
      chapter = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final scene = story[currentScene];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF25182E),
                Color(0xFF100D17),
                Color(0xFF09080D),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                _buildHeader(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            scene.image,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: const Color(0xFF302338),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.favorite,
                                  size: 90,
                                  color: Color(0xFFE7A3C0),
                                ),
                              );
                            },
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withValues(alpha: 0.05),
                                  Colors.black.withValues(alpha: 0.10),
                                  Colors.black.withValues(alpha: 0.80),
                                ],
                                stops: const [0.0, 0.42, 1.0],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 14,
                            right: 14,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.55),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.white24,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    size: 17,
                                    color: Color(0xFFF0B7CE),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    scene.location,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 14,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.55),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: Color(0xFFFF8FB5),
                                size: 21,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 18,
                            left: 18,
                            bottom: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  scene.character,
                                  style: const TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 10,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: 45,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE7A3C0),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                _buildStoryPanel(scene),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 8),
      child: Row(
        children: [
          Container(
            width: 43,
            height: 43,
            decoration: BoxDecoration(
              color: const Color(0xFF44263D),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: const Color(0xFFBD789D),
              ),
            ),
            child: const Icon(
              Icons.favorite,
              color: Color(0xFFFFA4C6),
              size: 23,
            ),
          ),
          const SizedBox(width: 11),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'خالد وعائشة',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'حكاية حب لا تنتهي',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFFC8B3C8),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 9,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF332132),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite,
                  size: 17,
                  color: Color(0xFFFF83AC),
                ),
                const SizedBox(width: 6),
                Text(
                  '$hearts',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 7),
          IconButton(
            tooltip: 'إعادة القصة',
            onPressed: restartGame,
            icon: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }

  Widget _buildStoryPanel(StoryScene scene) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 15, 18, 15),
      decoration: const BoxDecoration(
        color: Color(0xFF19131F),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
        border: Border(
          top: BorderSide(
            color: Color(0xFF56364F),
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Icon(
                Icons.auto_stories,
                size: 16,
                color: Color(0xFFE7A3C0),
              ),
              const SizedBox(width: 7),
              Text(
                'الفصل $chapter',
                style: const TextStyle(
                  color: Color(0xFFE7A3C0),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Text(
                'اختَر مسار قصتك',
                style: TextStyle(
                  color: Color(0xFFA99AAD),
                  fontSize: 11,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Text(
            scene.dialogue,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 14,
              height: 1.8,
              color: Color(0xFFF4EDF4),
            ),
          ),
          const SizedBox(height: 14),
          ...scene.choices.map(
            (choice) => Padding(
              padding: const EdgeInsets.only(bottom: 9),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () => choose(choice),
                  child: Ink(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF57334F),
                          Color(0xFF352237),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xFF82536F),
                        width: 0.8,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            choice.text,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_back_ios_new,
                          size: 15,
                          color: Color(0xFFFFB6D1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 2),
          Center(
            child: Text(
              'كل اختيار يصنع ذكرى جديدة ❤️',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white.withValues(alpha: 0.48),
              ),
            ),
          ),
        ],
      ),
    );
  }
}