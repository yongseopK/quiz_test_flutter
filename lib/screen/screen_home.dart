import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // 사용자의 화면 크기에 따른 높이 너비 설정
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("My Quiz App"),
        backgroundColor: Colors.deepPurple,
        // 상단바의 자동으로 생성되는 버튼을 없애줌
        leading: Container(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/quiz.jpeg',
              width: width * 0.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.024),
          ),
          Text(
            '플러터 퀴즈 앱',
            style: TextStyle(
              fontSize: width * 0.065,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '퀴즈를 풀기 전 안내사항입니다.\n꼼꼼히 읽고 퀴즈풀기를 눌러주세요.',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.048),
          ),
          _BuildStep(width, '1. 랜덤으로 나오는 퀴즈 3개를 풀어보세요.'),
          _BuildStep(width, '2. 문제를 잘 읽고 정답을 고른 뒤\n다음 문제 버튼을 눌러주세요.'),
          _BuildStep(width, '3. 만점을 향해 도전해보세요!'),
          Padding(
            padding: EdgeInsets.all(width * 0.048),
          ),
          Container(
            padding: EdgeInsets.only(bottom: width * 0.036),
            child: Center(
              child: ButtonTheme(
                minWidth: width * 0.8,
                height: height * 0.05,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {},
                  child: const Text(
                    '지금 퀴즈 풀기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget _BuildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        width * 0.048,
        width * 0.024,
        width * 0.048,
        width * 0.024,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title),
        ],
      ),
    );
  }
}
