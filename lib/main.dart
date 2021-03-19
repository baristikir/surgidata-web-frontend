import 'dart:html';

import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/Core/Manager/theme_manager.dart';
import 'package:surgidata_frontend/Pages/home_screen.dart';

void main() {
  return runApp(WebApp());
  // return runApp(ChangeNotifierProvider<ThemeNotifier>(
  //   create: (_) => new ThemeNotifier(),
  //   child: WebApp(),
  // ));
}

// *==================================================*
// *                App Routings                      *
// *==================================================*
class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeManager(
      defaultBrightness: Brightness.light,
      loadBrightnessOnStart: true,
      data: (brightness) {
        return brightness == Brightness.light
            ? ThemeData(
                primarySwatch: Colors.blueGrey,
                backgroundColor: $primaryLightBG,
                cardColor: Colors.transparent,
                cardTheme: CardTheme(
                  elevation: 0,
                ),
                 appBarTheme: AppBarTheme(
                  backgroundColor: Colors.white,
                ),
                primaryTextTheme: TextTheme(
                  headline6: TextStyle(
                    color: Colors.black,
                  ),
                  button: TextStyle(
                    color: Colors.blueGrey,
                    decorationColor: Colors.blueGrey[300],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.blueGrey[900],
                  ),
                  subtitle1: TextStyle(
                    color: Colors.black,
                  ),
                  headline1: TextStyle(color: Colors.blueGrey[800]),
                  bodyText1: TextStyle(color: Colors.black),
                  bodyText2: TextStyle(color: Colors.black87),
                ),
                bottomAppBarColor: Colors.white10,
                iconTheme: IconThemeData(color: Colors.blueGrey),
                brightness: brightness,
              )
            : ThemeData(
                primarySwatch: Colors.blueGrey,
                backgroundColor: $primaryDarkBG,
                cardColor: Colors.transparent,
                cardTheme: CardTheme(
                  elevation: 0,
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.transparent
                ),
                primaryTextTheme: TextTheme(
                  headline6: TextStyle(
                    color: Colors.white,
                  ),
                  button: TextStyle(
                    color: Colors.blueGrey[200],
                    decorationColor: Colors.blueGrey[50],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.white,
                  ),
                  subtitle1: TextStyle(
                    color: Colors.blueGrey[300],
                  ),
                  headline1: TextStyle(
                    color: Colors.white70,
                  ),
                  bodyText1: TextStyle(color: Colors.white),
                  bodyText2: TextStyle(color: Colors.white70),
                ),
                bottomAppBarColor: $darkFooterBG,
                iconTheme: IconThemeData(color: Colors.blueGrey[200]),
                brightness: brightness,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              );
      },
      themedWidgetBuilder: (context, data) => MaterialApp(
        title: "Surgi Data | Plato",
        debugShowCheckedModeBanner: false,
        theme: data,
        home: HomeScreen(),
        routes: {
          "/login": (context) => SignUpScreen(),
          "/preview": (context) => WelcomeScreen()
        },
      ),
    );
  }
}

// *==================================================*
// *                SignUp Screen                     *
// *==================================================*
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}

// *==================================================*
// *              SignUp Form Component               *
// *==================================================*
class SignUpForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();

  double _formProgress;

  void _showWelcomeScreen() {
    Navigator.of(context).pushNamed('/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: _formProgress),
          Text('Sign up', style: Theme.of(context).textTheme.headline4),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _firstNameTextController,
              decoration: InputDecoration(hintText: 'First name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _lastNameTextController,
              decoration: InputDecoration(hintText: 'Last name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _usernameTextController,
              decoration: InputDecoration(hintText: 'Username'),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled)
                    ? null
                    : Colors.white;
              }),
              backgroundColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled)
                    ? null
                    : Colors.blue;
              }),
            ),
            onPressed: _showWelcomeScreen,
            child: Text('Sign up'),
          ),
        ],
      ),
    );
  }
}

// *==================================================*
// *                Welcome Screen                    *
// *==================================================*
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome!",
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
