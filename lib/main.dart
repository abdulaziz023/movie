import 'package:flutter/material.dart';
import 'src/common/app/app.dart';
import 'src/common/service/db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.init();
  print("ALL SAVED----- ${await DB.getAllKeys()}");
  runApp(const App());
}
