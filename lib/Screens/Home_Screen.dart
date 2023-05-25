import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:winonequiz2/Screens/Profile_Screen.dart';
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back_img.jpg"), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ЛАСКАВО ПРОСИМО",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: (){Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Leaderboard_Screen(

                          ),
                        ));},


                    child: Image.asset(
                      "images/cicrcle_avatar.png",
                      width: 200,
                      // fit: BoxFit.cover,
                    ),
                  )
                ]),
              ),
              Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Зіграйте у вікторину\n, виберіть правильну\n відповідь",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 18, top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, constetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna\n aliqua.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Live_Quiz(model: model!)));
                  },
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff59F184),
                        Color(0xff90E211),
                        Color(0xff2DEE2C)

                        //add more colors
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    ),
                    child: Container(
                      constraints:
                          const BoxConstraints(minWidth: 40.0, minHeight: 36.0),
                      // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Грати',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                ),
              ),
              // ElevatedButton(onPressed: (){}, child: Text("Грати"), style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,
              //     padding: EdgeInsets.symmetric(
              //         vertical: 15, horizontal: 40),
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(28))
              // ),),
              Container(
                child: SizedBox(
                  height: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
