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
                  Expanded(child: Image.asset("images/trophey_img.png")),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Congratulations",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have won",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 60,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("x${widget.Score}"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffB736F3),
                          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4))),
                    ),
                  ),
                  Text(
                    "points",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididunt\n ut labore et dolore magna aliqua. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        height: 1.7),
                  ),
                ],
              ),
              SizedBox(
                height: 140,
              ),
              Row(
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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      child: Text(
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
