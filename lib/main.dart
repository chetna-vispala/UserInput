
import 'package:flutter/material.dart';

void main (){
  runApp(const userInput_page());
}
class userInput_page extends StatelessWidget {
  const userInput_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Text Field",
      home: DeviceScreen(),
    );
  }
}
class DeviceScreen extends StatefulWidget {
  const DeviceScreen({Key? key}) : super(key: key);

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {

  late String sendData;
  String display = "";


  void Showtext(){
    setState(() {
      display = sendData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Input"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("$sendData"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (text) {
                sendData = text;
                },
              decoration: const InputDecoration(
               // hintText: "say hello"
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.send_sharp),
                labelText: "Type Something",
              ),
              style: const TextStyle(color: Colors.red,
              ),

            ),
          ),
          ElevatedButton(onPressed: Showtext, child: Text("Press"),)
        ],
      ),
    );
  }
}


