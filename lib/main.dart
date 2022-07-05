// ignore_for_file: avoid_print

import 'package:assignment_viga/const.dart';
import 'package:assignment_viga/navgation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyNavigationBar(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: bgcolor,
            elevation: 0,
            actions: <Widget>[
              InkWell(
                child: const Icon(
                  MdiIcons.bellOutline,
                  color: iconColor,
                  size: 30,
                ),
                onTap: () {
                  print("Notification");
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print("Profile");
                  },
                  child: const CircleAvatar(
                    backgroundColor: bgcolor,
                    backgroundImage: AssetImage("assets/Chem.jpg"),
                  ),
                ),
              )
            ],
            title: const Text(
              "Home",
              style: TextStyle(
                color: fontColor,
                fontWeight: fontWeight,
                fontSize: 25,
              ),
            ),
          ),
          body: SizedBox(
            height: size.height / 1,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  subCard(size, "assets/Chemi.jpg", "Chemistry\n"),
                  subCard(size, "assets/Phys.jpg", "Physics\n"),
                  subCard(size, "assets/Math.jpg", "Math\n"),
                  subCard(size, "assets/Bio.jpg", "Biology\n"),
                  subCard(size, "assets/hi.jpg", "Hindi\n"),
                  subCard(size, "assets/Eng.jpg", "English\n"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//SUBJECT CARD

Widget subCard(Size size, image, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Center(
          child: Container(
            height: 240.0,
            width: 350.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 350,
                  decoration: const BoxDecoration(
                    color: bgcolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: text,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: fontColor,
                            fontWeight: fontWeight,
                            fontSize: 22),
                        children: const <TextSpan>[
                          TextSpan(
                            text: "10:00 am - 10:45 am | 32 student",
                            style: TextStyle(
                              color: fontparaColor,
                              fontWeight: fontWeight,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // const Expanded(
        //   child: Text(
        //     "Chemistry",
        //     textDirection: TextDirection.ltr,
        //     style: TextStyle(fontSize: 19),
        //   ),
        // ),
      ],
    ),
  );
}
