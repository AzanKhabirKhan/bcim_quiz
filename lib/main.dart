import 'package:flutter/material.dart';
import 'App_Constants/Constants.dart';
import 'App_Controller/DioClient/DioClient.dart';
import 'App_Controller/Services/ServerPageeService.dart';
import 'App_Controller/cubit_and_bloc/Authentication_cubit/ServerCubit.dart';
import 'Screens/Splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BetBoomQuiz());
}

//https://1quizitsagame.live/quiz/questions.php
class BetBoomQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ServerCubit>(
          create: (context) => ServerCubit(
            apiRepository: ServerPageeService(
              apiService: DioClient(Globals.BaseURL),
            ),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => Splash(),
          // '/splash': (context) => Splash(),
          // '/screen': (context) => Screen_2(model: questoins,),
          // '/screen': (context) => Screen_2(model: questoins,),
        },
      ),
    );
  }
}
