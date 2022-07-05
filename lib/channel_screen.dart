import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'const.dart';

class ChannelScreen extends StatefulWidget {
  const ChannelScreen({Key? key}) : super(key: key);

  @override
  State<ChannelScreen> createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
          ),
        ],
        title: const Text(
          "Channel",
          style: TextStyle(
            color: fontColor,
            fontWeight: fontWeight,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: size.height / 100,
            width: size.width,
          ),
          //**Search Bar*/
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height / 11,
              width: size.width,
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: size.height / 11,
                width: size.width / 1.1,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      size: 40,
                    ),
                    hintText: "Search Channel",
                    hintStyle: const TextStyle(color: hintTextColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ),
//**Channnel List */
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      children: [
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: diverColor,
                        ),
                        channelTile(
                            "Channel Name",
                            Icons.arrow_forward_ios_outlined,
                            () {},
                            "assets/Chemi.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget channelTile(String name, IconData icon, Function fun, image) {
  return ListTile(
    title: Text(
      name,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
    subtitle: const Text(
      "Teacher: Hello Class.Good Morning...",
      style: TextStyle(color: fontparaColor, fontWeight: FontWeight.w700),
    ),
    leading: CircleAvatar(
      backgroundImage: AssetImage(image),
    ),
    trailing: Icon(
      icon,
      color: buttonBgColor,
    ),
  );
}
