import '../App_Controller/model/questions_model.dart';
import 'Profile_Screen_5.dart';
import 'package:flutter/material.dart';
import 'package:winonequiz2/Screens/Screen_5.dart';
import '../App_Constants/Constants.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackGroundGradient,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  Text(
                    "Profile",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(""),
                ],
              ),
            ),
            // SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/prof_1.png',),
                        ),

                        SizedBox(height: 40,),
                        Text(
                          "Nick Name",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset("images/light_img.png")
              ],
            ),


          ],
        ),
      ),
    );
  }
}
