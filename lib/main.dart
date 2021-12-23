import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_counter',
                  style:GoogleFonts.lobster(fontSize: 250)
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        color: Colors.blueAccent,
                        iconSize: 95,
                        onPressed: _incrementCounter,
                        // tooltip: 'Increment',
                        icon: const Icon(Icons.add_circle),
                      ),


                      IconButton(
                          color: Colors.blueAccent,
                          iconSize: 95,
                          icon: const Icon(Icons.remove_circle_outline_outlined),
                          // tooltip: 'Increase volume by 10',
                          onPressed: _decrementCounter
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          FloatingActionButton.extended(
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero ),

            onPressed: () {
              setState(() {
                _counter = 0;
              });
              // Add your onPressed code here!
            },
            label: const Text(
              ' Reset ',
              style: TextStyle(fontSize: 30,color: Colors.black ),
            ),
            backgroundColor: Colors.grey.shade300,
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}