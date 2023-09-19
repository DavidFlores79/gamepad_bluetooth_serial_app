import 'package:flutter/material.dart';
import 'package:simple_joystick/simple_joystick.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Alignment currentAlignment = const Alignment(0, 0);
  double? currentX;
  double? currentY;
  bool? btnOne;
  bool? btnTwo;
  bool? btnThree;
  bool? btnFour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: JoyStick(
                      200,
                      50,
                      (details) {
                        setState(() {
                          currentX = details.alignment.x;
                          currentY = details.alignment.y;
                        });
                        // print('Detaill X = ${details.x} | Y = ${details.y} offset ${details.currentOffset * 1024} alignment ${details.alignment}');
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                      'X: ${currentX?.toStringAsFixed(2)} | Y: ${currentY?.toStringAsFixed(2)}'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 270,
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              elevation: 5,
                              padding: const EdgeInsets.all(3),
                              backgroundColor: Colors.blue, // <-- Button color
                              foregroundColor: Colors.red, // <-- Splash color
                            ),
                            child: const Icon(
                              Icons.radio_button_off,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              elevation: 5,
                              padding: const EdgeInsets.all(3),
                              backgroundColor: Colors.red, // <-- Button color
                              foregroundColor: Colors.blue, // <-- Splash color
                            ),
                            child: const Icon(
                              Icons.radio_button_off,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              elevation: 5,
                              padding: const EdgeInsets.all(3),
                              backgroundColor:
                                  Colors.purple, // <-- Button color
                              foregroundColor: Colors.red, // <-- Splash color
                            ),
                            child: const Icon(
                              Icons.radio_button_off,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              elevation: 5,
                              padding: const EdgeInsets.all(3),
                              backgroundColor: Colors.green, // <-- Button color
                              foregroundColor: Colors.blue, // <-- Splash color
                            ),
                            child: const Icon(
                              Icons.radio_button_off,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
