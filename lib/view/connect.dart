
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_simple_flashlight/model/ev3.dart';

class ConnectCard extends StatelessWidget {
  final TextEditingController ipController = TextEditingController();

  EV3 ev3;

  ConnectCard({required this.ev3});

  @override
  Widget build(BuildContext context) {

    void connectToEV3() async {
      ev3.connect(ipController.text, 27700);
    }

    void disconnectFromEV3() {
      ev3.disconnect();
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ipController,
              decoration: InputDecoration(
                labelText: 'IP Address',
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (ipController.text.isNotEmpty) {
                      if(!ev3.isConnected()) {
                        connectToEV3();
                      } else {
                        disconnectFromEV3();
                      }
                    }
                  },
                  child: const Text('Connect'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
