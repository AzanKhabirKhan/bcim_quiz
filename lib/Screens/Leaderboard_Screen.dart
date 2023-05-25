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
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/leaderboard_img.png"), fit: BoxFit.fill),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.5, vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          color: Colors.white,
                        )),
                    Text(
                      "Таблиця лідерів",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(""),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    border: Border.all(color: Colors.white, width: 2)),
                margin: EdgeInsets.symmetric(horizontal: 40, vertical:50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile_Screen(

                          ),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "наступний",
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
              ),
              // SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [

                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: Color(0xffD5C054).withOpacity(0.3),
                  //       borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(40),
                  //           topRight: Radius.circular(40))),
                  //   padding: EdgeInsets.only(bottom: 82),
                  //   child: Column(
                  //     children: [
                  //       GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                 builder: (context) => Profile_Screen(),
                  //               ));
                  //         },
                  //
                  //       ),
                  //       SizedBox(
                  //         height: 16,
                  //       ),
                  //
                  //     ],
                  //   ),
                  // ),

              //   ],
              // ),

            ],
          ),
        ),
      ),
    );
  }
}

// Widget LeaderBoardCard(String image, String name, int value) {
//   return Container(
//     margin: EdgeInsets.symmetric(vertical: 1),
//     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(6),
//       color: Color(0xff5C4370),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: 8.0),
//               child: CircleAvatar(
//                 backgroundImage: AssetImage("images/${image}.png"),
//               ),
//             ),
//             SizedBox(width: 25),
//             Text(
//               "$name",
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.white),
//             ),
//           ],
//         ),
//         Text(
//           "$value",
//           style: TextStyle(
//               fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
//         ),
//       ],
//     ),
//   );
// }
