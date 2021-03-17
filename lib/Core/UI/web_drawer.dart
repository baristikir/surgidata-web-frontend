import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/button.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';

class WebDrawer extends StatefulWidget {
  WebDrawer({Key key}) : super(key: key);

  @override
  _WebDrawerState createState() => _WebDrawerState();
}

class _WebDrawerState extends State<WebDrawer> {
  bool _isPocessing = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Button(
                  backgroundColor: $primaryOrangeColor,
                  buttonSize: ButtonSize.LARGE,
                  buttonText: "Vision Console",
                  onPress: () {},
                ),
              ),
              SizedBox(height: 20),
              Container(),
              
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Impressum',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 24),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'DSGVO',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                child: Divider(
                color: Colors.blueGrey[400],
                thickness: 2,
                ),
              ),
                    Text(
                      '© 2021 Surgi Data, All rights reserved',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
