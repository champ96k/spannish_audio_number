import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioCache player = AudioCache();
  Widget custumButton(text, buttonColor) {
    return MaterialButton(
      textColor: Colors.white,
      child: Text(
        text,
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
      color: buttonColor,
      height: 70.0,
      minWidth: 150.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      onPressed: () {
        playsound(text);
      },
    );
  }

  void playsound(String text) {
    switch (text) {
      case "ONE":
        player.play("one.wav");
        break;
      case "TWO":
        player.play("two.wav");
        break;
      case "THREE":
        player.play("three.wav");
        break;
      case "FOUR":
        player.play("four.wav");
        break;
      case "FIVE":
        player.play("five.wav");
        break;
      case "SIX":
        player.play("six.wav");
        break;
      case "SEVEN":
        player.play("seven.wav");
        break;
      case "EIGHT":
        player.play("eight.wav");
        break;
      case "NINE":
        player.play("nine.wav");
        break;
      case "TEN":
        player.play("ten.wav");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Spannish Audio Player",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spannish Audio Player"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image(
                  height: 150,
                  width: 150,
                  image: AssetImage("assets/pic1.png"),
                ),
                Row(
                  children: <Widget>[
                    custumButton("ONE", Colors.red),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    custumButton("TWO", Colors.deepPurple),
                  ],
                ),
                Row(
                  children: <Widget>[
                    custumButton("THREE",Color(0xFF8f6814)),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    custumButton("FOUR", Color(0xFF3103fc)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    custumButton("FIVE", Color(0xFF990099)),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    custumButton("SIX", Color(0xFFfc033d)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    custumButton("SEVEN", Color(0xFF3333ff)),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    custumButton("EIGHT", Colors.teal),
                  ],
                ),
                Row(
                  children: <Widget>[
                    custumButton("NINE", Color(0xFFff0066)),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    custumButton("TEN", Colors.deepOrange),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
