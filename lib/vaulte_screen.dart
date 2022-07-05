import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'const.dart';

class VaulteScreen extends StatefulWidget {
  const VaulteScreen({Key? key}) : super(key: key);

  @override
  State<VaulteScreen> createState() => _VaulteScreenState();
}

class _VaulteScreenState extends State<VaulteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
                    backgroundImage: AssetImage(
                      "assets/Chem.jpg",
                    ),
                  ),
                ),
              )
            ],
            title: const Text(
              "Vaulte",
              style: TextStyle(
                color: fontColor,
                fontWeight: fontWeight,
                fontSize: 25,
              ),
            ),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: .1),

                //**Vault */
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Center(
                        child: Text("6 files"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text("400 MB of 1 GB Full"),
                    ),
                  ],
                ),
              ),

              //*** Storage Indicator*/
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 350,
                      child: GFProgressBar(
                        percentage: .9,
                        progressBarColor: buttonBgColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Center(child: Text("Your Vault")),
            ],
          ),
        ),
      ),
    );
  }
}
