import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'const.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({Key? key}) : super(key: key);

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  ScrollController listScrollController = ScrollController();

  @override
  void initState() {
    ScrollController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "Timeline \n",
                style: TextStyle(
                  color: fontColor,
                  fontWeight: fontWeight,
                  fontSize: 27,
                ),
              ),
              TextSpan(
                text: " 2021-22 session",
                style: TextStyle(
                    color: fontparaColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),

            //**Timetable And Upcoming Part */
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / .5,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            print("Time Table");
                          });
                        },
                        child: const Text("Time Table"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print("Upcoming");
                        });
                      },
                      child: const Text("Upcoming"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          //**Week of Days List */
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.10,
                // width: 360,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: listScrollController,
                  children: <Widget>[
                    daysList("Mon", () {}),
                    daysList("Tus", () {}),
                    daysList("Wed", () {}),
                    daysList("Thu", () {}),
                    daysList("Fri", () {}),
                    daysList("Sat", () {}),
                    daysList("Sun", () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//**Day List  */

Widget daysList(String name, Function fun) {
  return ListTile(
    title: Text(
      name,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
  );
}
