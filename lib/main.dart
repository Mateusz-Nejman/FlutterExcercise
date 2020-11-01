import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final listViewTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Roboto-Light',
    fontSize: 15,
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final tracks = [
      'Нурминский - Я помню',
      'Kabe - Nad ranem',
      'BONEZ MC & RAF CAMORA - PALMEN AUS PLASTIK',
      'System Of A Down - Toxicity'
    ];

    return MaterialApp(
        title: 'Newtone Music Player',
        home: Scaffold(
          backgroundColor: Color(0xff121212),
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("Utwory"),
            backgroundColor: Color(0xff1f1f1f),
          ),
          body: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                    itemCount: tracks.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                            child: Icon(
                                Icons.audiotrack,
                                color: Colors.white
                            ),
                            width: 32
                        ),
                        title: Text(
                          tracks[index],
                          style: listViewTextStyle
                        ),
                        trailing: Container(
                            child: Icon(
                                Icons.menu,
                                color: Colors.white
                            ),
                          width: 32
                        ),
                      );
                    }
                  )
              ),

              Container(
                height: 60,
                color: Color(0xff1f1f1f),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon: Icon(Icons.play_arrow, color: Colors.white), onPressed: null),
                    IconButton(icon: Icon(Icons.audiotrack, color: Colors.white), onPressed: null),
                    IconButton(icon: Icon(Icons.person, color: Colors.white), onPressed: null),
                    IconButton(icon: Icon(Icons.list, color: Colors.white), onPressed: null),
                    IconButton(icon: Icon(Icons.settings, color: Colors.white), onPressed: null)
                  ],
                ),
              )
            ],
          )
        ));
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}