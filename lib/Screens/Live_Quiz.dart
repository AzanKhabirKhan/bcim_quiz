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
          padding: EdgeInsets.symmetric(vertical: 27, horizontal: 10),
          decoration: kBackGroundGradient,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customAppBar(context, 'Live Quiz'),
              Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    'images/Frame 31.png',
                    fit: BoxFit.fitWidth,
                    // height: 220,
                    // width: 320,
                  ))
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 24),
                    child: Text(
                      'JavaScript Quiz',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xffD4C3F9),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                child: ScrollablePositionedList.builder(
                  itemScrollController: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: (widget.model.questions?.length)!,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: numberdBoxes(
                          "${index + 1}", this.index == index ? true : false),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 22),
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
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
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
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                child: elevatedButton('Next', () {
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
                      _scrollController.scrollTo(
                          index: index, duration: Duration(seconds: 1));
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
