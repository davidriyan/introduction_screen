import 'package:coba/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import './home_page.dart';
import 'package:lottie/lottie.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        //di widget page ini, berisi list isi content yang ingin kita buat
//membuat pageviewmodel yang pertama, fitur ini ditampilkan pada awal slide screen
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: LottieBuilder.asset(
                'assets/lotties/intro.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        //membuat pageviewmodel yang kedua, fitur ini ditampilkan pada slide screen kedua
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: LottieBuilder.asset(
                'assets/lotties/login.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
      //widget snownextbutton dan next, bersifat wajib ada
      showNextButton: true,
      next: const Text('Next'),
      done: const Text("Done"),
      onDone: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      },
    );
  }
}
