import 'package:flutter/material.dart';
import '../App_Constants/Constants.dart';
import 'Profile_Screen.dart';

class Leaderboard_Screen extends StatefulWidget {
  const Leaderboard_Screen({Key? key}) : super(key: key);

  @override
  State<Leaderboard_Screen> createState() => _Leaderboard_ScreenState();
}

class _Leaderboard_ScreenState extends State<Leaderboard_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackGroundGradient,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.5, vertical: 18),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffE1C3F9),
                        )),
                    Text(
                      "Leaderboard",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffE1C3F9)),
                    ),
                    Text(""),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF54D5B6).withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    padding: EdgeInsets.only(bottom: 28),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/propile_3.png'),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffD5C054).withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    padding: EdgeInsets.only(bottom: 82),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile_Screen(),
                                ));
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('images/profile_1_.png'),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xff54BED5).withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      padding: EdgeInsets.only(bottom: 28),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('images/propile_2.png'),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    LeaderBoardCard('small_1', 'Name', 10250),
                    LeaderBoardCard('small_2', 'Name', 8064),
                    LeaderBoardCard('small_3', 'Name', 4084),
                    LeaderBoardCard('small_4', 'Name', 3088),
                    LeaderBoardCard('small_5', 'Name', 1800),
                    LeaderBoardCard('Ruby', 'Name', 1800),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget LeaderBoardCard(String image, String name, int value) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 1),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Color(0xff5C4370),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/${image}.png"),
              ),
            ),
            SizedBox(width: 25),
            Text(
              "$name",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ],
        ),
        Text(
          "$value",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ],
    ),
  );
}
