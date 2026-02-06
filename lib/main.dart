import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const StudentNotesApp());
}

class StudentNotesApp extends StatelessWidget {
  const StudentNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Notes',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}