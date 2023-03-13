import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import '../App_Constants/Constants.dart';
import '../App_Controller/model/questions_model.dart';
import 'Leaderboard_Screen.dart';
import 'Live_Quiz.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Questions_model? model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  init() async {
    //questions
    final String response =
        await rootBundle.loadString('images/questions.json');
    model = Questions_model.fromJson(json.decode(response));
    print(model?.questions![0].questions);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(top: 20.5, left: 27.5, right: 27.5, bottom: 20),
          padding: EdgeInsets.symmetric(vertical: 20.5, horizontal: 20.5),
          decoration: kBackGroundGradient,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/small_logo.png'),
                  Image.asset("images/profile_logo.png"),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Live_Quiz(
                          model: model!,
                        ),
                      ));
                },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 70, bottom: 32, left: 10, right: 16),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      height: 180,
                      width: double.infinity,
                      decoration: kCardGradient,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/questions_icon.png'),
                          Text(
                            "Let\'s Start the",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff1E1E1E)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Quiz',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32,
                                    color: Colors.white),
                              ),
                              Image.asset('images/arrow_right.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 210,
                        right: 0,
                        bottom: 90,
                        child: Image.asset(
                          'images/e0cb4.png',
                          scale: 0.2,
                        )),
                  ],
                ),
              ),
              Divider(
                height: 2,
                color: Color(0xffD9D9D9),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      // textAlign: TextAlign.left,
                      'Leader Board',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB080FF)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/pic_1.png'),
                          radius: 50,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '1st',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Rank',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffC3CFF9),
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_drop_up_outlined,
                          color: Color(0xff50FF57), size: 30),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '20,640',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Total Points',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC3CFF9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/pic_2.png'),
                          radius: 50,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '2nd',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Rank',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffC3CFF9),
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_drop_down_outlined,
                          color: Color(0xffFF5050), size: 30),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '19,530',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Total Points',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC3CFF9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42),
                child: elevatedButton('Learn More', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Leaderboard_Screen(),
                      ));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
