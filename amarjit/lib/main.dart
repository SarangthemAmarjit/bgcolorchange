import 'package:flutter/material.dart';

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
      home: const Testwidget(),
    );
  }
}

class Testwidget extends StatefulWidget {
  const Testwidget({Key? key}) : super(key: key);

  @override
  State<Testwidget> createState() => _TestwidgetState();
}

class _TestwidgetState extends State<Testwidget> {
  int index = 0;
  Color bgcolor = Colors.blue;
  List<Color> bg = [Colors.amber,
  Colors.red,
  Colors.green,
  Colors.deepOrange
  ];

  bool click = true;
  Color color = Colors.yellow;
  String str = 'WELCOME TO FLUTTER';
   void change() {
    setState(() {
      str = " THE BG_COLOR IS CHANGED ";
      bgcolor = bg[index% bg.length];
      index++;
      
        
      
      
      

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(title: const Text("Myapp")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                child: Text(str,
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Aerial')),
              ),
              width: 400,
              height: 50,
              color: color,
              margin: const EdgeInsets.all(20),
            ),
            Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.lime),
                    onPressed: (change),
                    child: const Text(
                      'CHANGE COLOR',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      setState(() {
                        color = Colors.red;
                      });
                    },
                    child: const Text('RED')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: () {
                      setState(() {
                        color = Colors.blue;
                      });
                    },
                    child: const Text('BLUE')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                    onPressed: () {
                      setState(() {
                        color = Colors.lightGreen;
                      });
                    },
                    child: const Text('GREEN')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                    onPressed: () {
                      setState(() {
                        color = Colors.orange;
                      });
                    },
                    child: const Text('ORANGE'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}