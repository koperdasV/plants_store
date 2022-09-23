import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plants_store/core_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const CoreApp());
}
