// import 'package:flutter/material.dart';
//
// import '../App_Constants/App_Constants.dart';
// import 'Screen_4.dart';
//
// class Screen_3_exp extends StatefulWidget {
//   const Screen_3_exp({Key? key}) : super(key: key);
//
//   @override
//   State<Screen_3_exp> createState() => _Screen_3_expState();
// }
//
// class _Screen_3_expState extends State<Screen_3_exp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     body: Container(
//       decoration: kBackGroundGradient,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 30.5,vertical: 18),
//         child: Column(
//           children: [
//             Padding(
//               padding:  EdgeInsets.only(top: 30,),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(Icons.arrow_back_ios,color: Colors.white,),
//                   Text("Leaderboard",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
//                   Text(""),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset("images/king_img.png"),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//               CircleAvatar(
//                 radius: 25,
//                 backgroundImage:
//                 AssetImage('images/boy_img.png'),
//               ),
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => Screen_4(),
//                         ));
//                   },
//                   child: CircleAvatar(
//                   radius: 40,
//                   backgroundImage:
//                   AssetImage('images/avatar_img.png'),
//               ),
//                 ),CircleAvatar(
//                 radius: 25,
//                 backgroundImage:
//                 AssetImage('images/boy_img.png'),
//               )
//
//             ],),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
//                 Text("Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
//                 Text("Name", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white),)
//               ],
//             ),
//             SizedBox(height: 30),
//            SingleChildScrollView(
//              scrollDirection: Axis.vertical ,
//              child: Column(
//                children: [
//                  LeaderBoardCard(),
//                  LeaderBoardCard(),
//                  LeaderBoardCard(),
//                  LeaderBoardCard(),
//                  LeaderBoardCard(),
//                  LeaderBoardCard(),
//
//                ],
//              ),
//            )
//
//           ],
//         ),
//       ),
//     ),
//     );
//   }
// }
// Widget LeaderBoardCard(){
//   return   Container(
//     margin: EdgeInsets.symmetric(vertical: 10),
//     padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(0xff435770),),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Padding(
//           padding:  EdgeInsets.only(left: 8.0),
//           child: CircleAvatar(
//             backgroundImage: AssetImage('images/boy_img.png'),
//           ),
//         ),
//         Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
//         Text(""),
//         Text("10,250",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
//
//       ],),
//   );
// }
