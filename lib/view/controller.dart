import 'package:flutter/material.dart';
import 'package:my_simple_flashlight/model/ev3.dart';

class MainScreen extends StatelessWidget {
  EV3 ev3;

  MainScreen({required this.ev3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Control'),
      ),
      body: 
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Logic for moving the vehicle forward
                      ev3.sendCommand('Camera left');
                    },
                    child: Icon(Icons.arrow_left),
                  ),
                  SizedBox(width: 16),
                  const Expanded(
                    child: Placeholder(), // Placeholder for displaying video
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Logic for moving the vehicle forward
                      ev3.sendCommand('Camera right');
                    },
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center, 
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Logic for moving the vehicle forward
                                print('Forward');
                                ev3.sendCommand('forward');
                              },
                              child: Icon(Icons.arrow_circle_up),
                            ),
                          ],
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Logic for moving the vehicle left
                              ev3.sendCommand('left');
                            },
                            child: Icon(Icons.arrow_circle_left_outlined),
                          ),
                          SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Logic for moving the vehicle backward
                              ev3.sendCommand('back');
                            },
                            child: Icon(Icons.arrow_circle_down),
                          ),
                          SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Logic for moving the vehicle right
                              ev3.sendCommand('right');
                            },
                            child: Icon(Icons.arrow_circle_right_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Logic for moving the vehicle left
                          ev3.sendCommand('fire');
                        },
                        child: Icon(Icons.attribution_sharp),
                      ),
                    ],
                  ),
                ]
              ),
            ],
          ),          
    );
  }
}
