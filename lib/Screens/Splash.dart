import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../App_Constants/Constants.dart';
import '../App_Controller/DioClient/DioClient.dart';
import '../App_Controller/Services/ServerPageeService.dart';
import '../App_Controller/cubit_and_bloc/Authentication_cubit/ServerCubit.dart';
import '../App_Controller/model/questions_model.dart';
import 'Screen_6.dart';
import 'Home_Screen.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    String lang = Localizations.localeOf(context).toString();

    return Scaffold(
      body: SafeArea(
        child: Container(
        height: 800,
        width: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/splacah_img.jpg"),
    fit: BoxFit.cover)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              BlocProvider(
                create: (context) => ServerCubit(
                  apiRepository: ServerPageeService(
                    apiService: DioClient(Globals.BaseURL),
                  ),
                )..GetQuestion(lang),
                child: BlocConsumer<ServerCubit, ServerState>(
                  listener: (context, state) async {
                    if (state is ServerSuccess) {
                      questionlist data = questionlist
                          .fromJson(jsonDecode(state.response?.data));
                      if (data.data![0].coef == 20) {
                        print("${data.data![0].coef}");
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen6(),
                            ));
                      } else if (data.data![0].coef == 19) {
                        // Questions_model questoins = Questions_model.fromJson(
                        //     jsonDecode(state.response.data));
                        print("${data.data![0].coef}");
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Screen(),
                            ));
                      }
                    }
                  },
                  builder: (context, state) {
                    return Container(
                      // margin: EdgeInsets.symmetric(vertical: 250),
                      child: SizedBox(
                        height: 45,
                        width: 45,
                        // child: CircularProgressIndicator(
                        //   strokeWidth: 5,
                        //   valueColor: new AlwaysStoppedAnimation<Color>(
                        //     Color(0xffE84A06
                        //     ),
                        //   ),
                        // ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
