import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../App_Constants/Constants.dart';
import '../App_Controller/model/questions_model.dart';
import 'Screen_5.dart';

class Live_Quiz extends StatefulWidget {
  final Questions_model model;

  const Live_Quiz({Key? key, required this.model}) : super(key: key);

  @override
  State<Live_Quiz> createState() => _Live_QuizState();
}

class _Live_QuizState extends State<Live_Quiz> {
  int index = 0;
  int Score = 0;
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  ItemScrollController _scrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/back_img.jpg"), fit: BoxFit.fill),
          ),
          padding: EdgeInsets.symmetric(vertical: 27, horizontal: 10),
          // decoration: kBackGroundGradient,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // customAppBar(context, 'Live Quiz'),
SizedBox(height: 30,),
              Stack(
                children: [
                  Container(

                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 5.0, // has the effect of softening the shadow
                            spreadRadius: 2.0, // has the effect of extending the shadow
                            offset: Offset(
                              2.0, // horizontal, move right 10
                              5.0, // vertical, move down 10
                            ),
                          )
                        ],
                        color: Colors.white.withAlpha(230),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              '${widget.model.questions?[index].questions}?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color(0xff00AA59),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                            "${index + 1}/${widget.model.questions?.length}"),
                      ),
                    ],
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Питання ${index + 1}/${widget.model.questions?.length}",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      optionButton(
                        '${widget.model.questions?[index].incorrectAnswer?[0]}',
                        option1,
                        () {
                          print("option 1");
                          if (option1) {
                            print("true");
                            option1 = false;
                          } else {
                            print("false");
                            option1 = true;
                            option2 = false;
                            option3 = false;
                            option4 = false;
                          }
                          setState(() {});
                        },
                      ),

                      optionButton(
                        '${widget.model.questions?[index].incorrectAnswer?[1]}',
                        option2,
                        () {
                          if (option2) {
                            option2 = false;
                          } else {
                            option2 = true;
                            option1 = false;
                            option3 = false;
                            option4 = false;
                          }
                          setState(() {});
                        },
                      ),

                      // optionButton('Both'),
                      // optionButton('Alert'),

                      optionButton(
                        '${widget.model.questions?[index].incorrectAnswer?[2]}',
                        option3,
                        () {
                          if (option3) {
                            option3 = false;
                          } else {
                            option3 = true;
                            option1 = false;
                            option2 = false;
                            option4 = false;
                          }
                          setState(() {});
                        },
                      ),
                      optionButton(
                        '${widget.model.questions?[index].incorrectAnswer?[3]}',
                        option4,
                        () {
                          if (option4) {
                            option4 = false;
                          } else {
                            option4 = true;
                            option1 = false;
                            option2 = false;
                            option3 = false;
                          }
                          setState(() {});
                        },
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 52, right: 52),
                child: elevatedButton('наступний', () {
                  if (!option1 && !option2 && !option3 && !option4) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please Select an Option"
                            "")));
                  } else {
                    if ((widget.model.questions?.length)! - 1 > index) {
                      // Score Update kaw
                      if (option1) {
                        if (widget
                                .model.questions?[index].incorrectAnswer?[0] ==
                            widget.model.questions?[index].correctAnswer) {
                          print("Correct Answer 1");
                          Score++;
                        }
                      } else if (option2) {
                        if (widget
                                .model.questions?[index].incorrectAnswer?[1] ==
                            widget.model.questions?[index].correctAnswer) {
                          print("Correct Answer 2");
                          Score++;
                        }
                      } else if (option3) {
                        if (widget
                                .model.questions?[index].incorrectAnswer?[2] ==
                            widget.model.questions?[index].correctAnswer) {
                          print("Correct Answer 3");
                          Score++;
                        }
                      } else if (option4) {
                        if (widget
                                .model.questions?[index].incorrectAnswer?[3] ==
                            widget.model.questions?[index].correctAnswer) {
                          print("Correct Answer 4");
                          Score++;
                        }
                      }
                      index++;
                      option1 = false;
                      option2 = false;
                      option3 = false;
                      option4 = false;

                      setState(() {});
                    } else {
                      //result page
                      print(Score);
                      setScore();
                    }
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  setScore() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('score', Score).then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Screen_5(
              Score: Score,
              model: widget.model,
            ),
          ));
    });
  }
}
