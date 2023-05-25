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
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/back_groun.png"), fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Вітаю",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(230),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ви виграли ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "15 балів..",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff00B1AD)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Вітаємо, ви пройшли тест. Якщо вам сподобався тест, спробуйте ще раз. Якщо ви хочете побачити свій рейтинг, перейдіть до таблиці лідерів.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          height: 1.7),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home_Screen(),
                              ));
                        },
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ))
                    // elevatedButton('Done', () {

                    // })
                  ],
                ),
              ),
              SizedBox(height: 40),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset("images/backward_img.png"),
              //     SizedBox(
              //       width: 12,
              //     ),
              //     GestureDetector(
              //         onTap: () {

              //         },
              //         child: Text(
              //           "Play again",
              //           style: TextStyle(
              //               fontSize: 14,
              //               fontWeight: FontWeight.w400,
              //               color: Colors.white),
              //         )),
              //   ],
              // ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    border: Border.all(color: Colors.white, width: 2)),
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Live_Quiz(
                            model: widget.model,
                          ),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Грати ще",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
