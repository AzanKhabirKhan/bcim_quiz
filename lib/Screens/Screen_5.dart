import 'package:flutter/material.dart';
import '../App_Constants/Constants.dart';
import '../App_Controller/model/questions_model.dart';
import 'Home_Screen.dart';
import 'Live_Quiz.dart';
// import 'package:confetti/confetti.dart';

class Screen_5 extends StatefulWidget {
  int Score;
  final Questions_model model;

  Screen_5({Key? key, required this.Score, required this.model})
      : super(key: key);

  @override
  State<Screen_5> createState() => _Screen_5State();
}

class _Screen_5State extends State<Screen_5> {
  // final controller = ConfettiController();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   controller.play();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kBackGroundGradient,
          child: ListView(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset("images/congrats_img.png")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Congratulation you have complete the quiz and\n if you enjoy the quiz please try again, if you want\n to see your ranking please go to the\n leaderboard. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        height: 1.7),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    elevatedButton('Done', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home_Screen(),
                          ));
                    })
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/backward_img.png"),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Live_Quiz(
                                model: widget.model,
                              ),
                            ));
                      },
                      child:
                      Text(
                        "Play again",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
