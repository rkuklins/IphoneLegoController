import 'dart:ffi';
import 'dart:io';

class EV3 {
  Socket? socket;
  String ip = "192.168.1.83";
  int port = 27700;

  EV3();

  void connect(String ip, int port) async {
    // Connect to the EV3 device using the socket
    this.ip = ip;
    this.port = port;

    try {
      socket = await Socket.connect(this.ip, this.port);
    } catch (e) {
      print('Failed to connect to $this.ip on port $this.port: $e');
    }
  }

  void disconnect() {
    // Disconnect from the EV3 device
    socket?.destroy();
  }

  void sendCommand(String command) {
    // Send a command to the EV3 device
    if (socket != null) {
      socket!.write(command);
    }
  }

  bool isConnected() {
    // Check if the EV3 device is connected
    return socket != null;
  }
}
