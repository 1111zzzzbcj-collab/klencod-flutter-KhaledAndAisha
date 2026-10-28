import 'package:flutter/material.dart';

void main() {
  runApp(const KhaledAishaGame());
}

class KhaledAishaGame extends StatelessWidget {
  const KhaledAishaGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KhaledAndAisha',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE85D75),
        ),
      ),
      home: const GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String location = 'غرفة الجلوس';
  int hearts = 3;
  int scene = 0;

  String dialogue =
      'عائشة جالسة على الأريكة عندما يدخل خالد إلى الغرفة.';

  String speaker = 'الراوي';

  final List<Map<String, dynamic>> choices = [
    {
      'text': '❤️ أقترب من عائشة وأجلس بجانبها',
      'speaker': 'خالد',
      'dialogue': 'عائشة، اشتقت لك اليوم كثيرًا. كيف كان يومك؟',
      'response': 'عائشة تبتسم: يومي صار أحلى بعدما جيت.',
      'hearts': 1,
    },
    {
      'text': '😊 أمزح معها وأضحكها',
      'speaker': 'خالد',
      'dialogue': 'عندي سؤال مهم جدًا، ومستعد أسمع إجابتك!',
      'response': 'عائشة تضحك: خير، إيش السؤال الخطير هذا؟',
      'hearts': 1,
    },
    {
      'text': '☕ أسألها إذا تريد شيئًا تشربه',
      'speaker': 'خالد',
      'dialogue': 'حبيبتي، أجيب لك شايًا أم عصيرًا؟',
      'response': 'عائشة تقول: اجلس معي أولًا، وبعدها نشرب سوا.',
      'hearts': 0,
    },
  ];

  void choose(int index) {
    final choice = choices[index];

    setState(() {
      speaker = choice['speaker'] as String;
      dialogue = choice['dialogue'] as String;
      hearts += choice['hearts'] as int;
      scene++;
    });

    Future.delayed(const Duration(milliseconds: 1800), () {
      if (!mounted) return;

      setState(() {
        speaker = 'عائشة';
        dialogue = choice['response'] as String;
      });
    });
  }

  void nextScene() {
    setState(() {
      location = location == 'غرفة الجلوس'
          ? 'المطبخ'
          : location == 'المطبخ'
              ? 'الشرفة'
              : 'غرفة الجلوس';

      speaker = 'الراوي';
      dialogue = location == 'المطبخ'
          ? 'ذهب خالد وعائشة إلى المطبخ لتحضير مشروب معًا.'
          : location == 'الشرفة'
              ? 'جلس الزوجان في الشرفة يتحدثان عن أحلامهما.'
              : 'عاد خالد وعائشة إلى غرفة الجلوس لقضاء وقت معًا.';

      scene++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFE4EC),
              Color(0xFFFFF7F0),
              Color(0xFFE9E8FF),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'KhaledAndAisha ❤️',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9D3458),
                      ),
                    ),
                    Text(
                      '❤️ $hearts',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.home_rounded,
                        color: Color(0xFFE85D75)),
                    const SizedBox(width: 8),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('🏠', style: TextStyle(fontSize: 75)),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _character('👨🏻', 'خالد'),
                          const SizedBox(width: 35),
                          _character('👩🏻', 'عائشة'),
                        ],
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        'حياة زوجية مليئة بالمحبة',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9D3458),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.12),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      speaker,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Color(0xFFE85D75),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      dialogue,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.7,
                        color: Color(0xFF34303A),
                      ),
                    ),
                    const SizedBox(height: 14),
                    if (speaker == 'الراوي') ...[
                      ...List.generate(
                        choices.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: FilledButton(
                            onPressed: () => choose(index),
                            style: FilledButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFFE85D75),
                              padding: const EdgeInsets.symmetric(
                                vertical: 13,
                              ),
                            ),
                            child: Text(
                              choices[index]['text'] as String,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ] else
                      FilledButton.icon(
                        onPressed: nextScene,
                        icon: const Icon(Icons.arrow_back_rounded),
                        label: const Text('متابعة القصة'),
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFFE85D75),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    const SizedBox(height: 4),
                    Text(
                      'المشهد $scene',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _character(String emoji, String name) {
    return Column(
      children: [
        Container(
          width: 105,
          height: 105,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFFE85D75),
              width: 3,
            ),
          ),
          child: Center(
            child: Text(
              emoji,
              style: const TextStyle(fontSize: 55),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF9D3458),
          ),
        ),
      ],
    );
  }
}