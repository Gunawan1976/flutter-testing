import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: testingHttp(),
    );
  }
}

class testingHttp extends StatefulWidget {
  const testingHttp({super.key});

  @override
  State<testingHttp> createState() => _testingHttpState();
}

class _testingHttpState extends State<testingHttp> {
  TextEditingController name = TextEditingController();
  TextEditingController job = TextEditingController();
  String? testing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("testing HTTP"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            controller: name,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "nama",
            ),
          ),
          SizedBox(height: 15),
          TextField(
            controller: job,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "job",
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () async {
              setState(
                () {
                  testing = name.text;
                },
              );
            },
            style:
                ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(50, 50))),
            child: Icon(Icons.play_circle_outline_sharp),
          ),
          Text(testing.toString())
        ],
      ),
    );
  }
}
