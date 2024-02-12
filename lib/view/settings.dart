import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final TextEditingController ipAddressController = TextEditingController();
  final TextEditingController portController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: ipAddressController,
              decoration: InputDecoration(
                labelText: 'IP Address',
              ),
            ),
            TextField(
              controller: portController,
              decoration: InputDecoration(
                labelText: 'Port',
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Save settings logic here
                String ipAddress = ipAddressController.text;
                int port = int.tryParse(portController.text) ?? 0;
                String name = nameController.text;

                // TODO: Implement save settings logic
              },
              child: Text('Save Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
