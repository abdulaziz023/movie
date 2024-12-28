import 'package:flutter/material.dart';
import 'package:movie_app/src/common/service/db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DB.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> textField = [];
  List<String> textField2 = [];
  int? id;
  final result = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  textField.add(value);
                },
                decoration: InputDecoration(hintText: "Key"),
              ),
              TextField(
                onChanged: (value) {
                  textField2.add(value);
                },
                decoration: InputDecoration(hintText: "value"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await DB.saveString(textField.last, textField2.last);
                  setState(() {});
                },
                child: const Text("Save"),
              ),
              SizedBox(height: 50),
              TextField(
                onSubmitted: (value) {
                  setState(() {
                    id = int.parse(value);
                  });
                },
                keyboardType: TextInputType.number,
              ),
              Text("Saved ${DB.getString(id.toString())}"),
              ElevatedButton(
                onPressed: () async {
                  print(await DB.getAllKeys());

                  setState(() {});
                },
                child: Text("Get All Value"),
              ),
              Text("${DB.getAllKeys()}")
            ],
          ),
        ),
      ),
    );
  }
}
