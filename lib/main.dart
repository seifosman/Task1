import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                  'Welcome Back',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:40,
                ),
              ),

              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMIKYIj4dvs8lU1lyEnFa55AQdmF3uEw-aHKl6ETw9&s',

              ),
             Mycont(textt: 'Get Start', widthh: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mycont(textt: 'Sign up', widthh: 100),
                  SizedBox(
                    width: 50,
                  ),
                  Mycont(textt: 'Login', widthh: 100),
                ],
              )





            ],
          ),
        ),
    ),
    );
  }
}

class Mycont extends StatelessWidget {
  final String textt;
  final double widthh;
  const Mycont({super.key, required this.textt, required this.widthh});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: widthh,
      height: 70,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        textt,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
