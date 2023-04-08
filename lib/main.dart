import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        title: "Play LIST SONG",
        home: const MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.blueGrey),
      ),
    );
  }
}

final play = AssetsAudioPlayer();
final play2 = AssetsAudioPlayer();

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            "LIST SONG",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  height: 150,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(60.0),
                        child: Text(
                          "Travis Scott - SICKO MODE",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(50), // <-- Radius
                            ),
                          ),
                          child: const Text(
                            'CLICK',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Route1()),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[900],
                      borderRadius: BorderRadius.circular(100)),
                  height: 150,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(60.0),
                        child: Text(
                          "Travis Scott - goosebumps ft. Kendrick Lamar",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          child: const Text(
                            'CLICK',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Route2()),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //Route3
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(100)),
                  height: 150,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(60.0),
                        child: Text(
                          "Travis Scott - HIGHEST IN THE ROOM",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          child: const Text(
                            'CLICK',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Route3()),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Route1 extends StatelessWidget {
  const Route1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Travis Scott - SICKO MODE',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("TS1.jpg"),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            play.open(
                              Audio("assets/Travis.mp3"),
                            );
                          },
                          child: Text(
                            'Play',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            play.stop();
                          },
                          child: Text(
                            'Stop',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}

class Route2 extends StatelessWidget {
  const Route2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[900],
            title: const Text(
              'Travis Scott - goosebumps ft. Kendrick Lamar',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("TB2.jpg"),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              play2.open(
                                Audio("assets/goosebumps.mp3"),
                              );
                            },
                            child: Text(
                              'Play',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(24),
                            ),
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              play2.stop();
                            },
                            child: Text(
                              'Stop',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(24),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}

class Route3 extends StatelessWidget {
  const Route3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: const Text(
            'Travis Scott - HIGHEST IN THE ROOM (Official Music Video)',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("TS3.jpg"),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            play.open(
                              Audio("assets/HIGHEST.mp3"),
                            );
                          },
                          child: Text(
                            'Play',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            play.stop();
                          },
                          child: Text(
                            'Stop',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
