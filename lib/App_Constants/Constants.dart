import 'package:flutter/material.dart';

const kBackGroundGradient = BoxDecoration(
    //

    // Gradient from https://learnui.design/tools/gradient-generator.html
    gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment(0.8, 1),
  colors: <Color>[
    Color(0xff4D1902),
    Color(0xff000000),
  ],
));
//linear-gradient(180deg, #321458 0%, #050207 100%)
const kSplashGradient = BoxDecoration(
    // image: AssetImage("images/objects_splash.png",),
    image: DecorationImage(
      image: AssetImage('images/background_img.png'),
      fit: BoxFit.fill,
    ),
    // Gradient from https://learnui.design/tools/gradient-generator.html
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xff4D1902),
        Color(0xff000000),
      ],
    ));

const kCardGradient = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    // Gradient from https://learnui.design/tools/gradient-generator.html
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff4D1902),
        Color(0xff000000),
      ],
    ));

Widget elevatedButton(String btitle, Function() onPressed) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
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
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
     border: Border.all(color: Color(0xff4EE44D))
    ),
    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),

    child: ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$btitle",style: TextStyle(color: Color(0xff4EE44D),fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}

Widget customAppBar(BuildContext context, String atitle) {
  return Container(
    padding: EdgeInsets.only(top: 20, bottom: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xffDEC3F9),
            )),
        Text(
          '$atitle',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffDEC3F9)),
        ),
        Text(''),
      ],
    ),
  );
}

Widget numberdBoxes(String btitle, bool isActive) {
  return Container(
    // margin: EdgeInsets.symmetric(horizontal: 5),
    width: 50,
    height: 50,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        "$btitle",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Color(0xffC3CFF9)),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? Color(0xffA954FF) : Color(0xff594370),
          // padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    ),
  );
}

Widget optionButton(String btitle, bool isActive, Function() onpressed) {
  return Container(
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
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      gradient: isActive ?LinearGradient(colors: [
        Color(0xff59F184),
        Color(0xff59F184),
        Color(0xff59F184),
        //add more colors
      ]):LinearGradient(colors: [
        Color(0xff59F184),
        Color(0xff90E211),
        Color(0xff90E211),
        //add more colors
      ]),
    ),
    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    child: ElevatedButton(
      onPressed: onpressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$btitle"),
        ],
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          // backgroundColor: isActive ? Color(0xff2AC65F) : Color(0xff594370),
          // padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
    ),
  );
}

class Globals {
  //https://1quizitsagame.live/api/user.php?a=202
  static String BaseURL = "https://1quizitsagame.live/api/";
}
