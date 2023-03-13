import 'package:flutter/material.dart';

const kBackGroundGradient = BoxDecoration(
    //

    // Gradient from https://learnui.design/tools/gradient-generator.html
    gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment(0.8, 1),
  colors: <Color>[
    Color(0xff321458),
    Color(0xff050207),
  ],
));
//linear-gradient(180deg, #321458 0%, #050207 100%)
const kSplashGradient = BoxDecoration(
    // image: AssetImage("images/objects_splash.png",),
    image: DecorationImage(
      image: AssetImage('images/Back Groud.jpg'),
      fit: BoxFit.fill,
    ),
    // Gradient from https://learnui.design/tools/gradient-generator.html
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xff3A1458),
        Color(0xff020102),
      ],
    ));

const kCardGradient = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    // Gradient from https://learnui.design/tools/gradient-generator.html
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xffA954FF),
        Color(0xffB22AF2),
      ],
    ));

Widget elevatedButton(String btitle, Function() onPressed) {
  return Container(
    width: 200,
    height: 60,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(
        "$btitle",
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff3A75F2),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
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
    // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    width: 150,
    height: 45,
    child: ElevatedButton(
      onPressed: onpressed,
      child: Text("$btitle"),
      style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? Color(0xff2AC65F) : Color(0xff594370),
          // padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
    ),
  );
}

class Globals {
  //https://1quizitsagame.live/api/user.php?a=202
  static String BaseURL = "https://1quizitsagame.live/api/";
}
