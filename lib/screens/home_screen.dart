import 'package:flutter/material.dart';
import 'add_note_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> notes = [
    'Flutter Basics',
    'Stateful vs Stateless',
    'Build method understanding',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Notes'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10,
            vertical: 5),
            child: ListTile(
              leading: const Icon(Icons.note),
              title: Text(notes[index]),
              trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      notes.removeAt(index);
                    });
                  }
                  ,icon: const Icon(Icons.delete, color: Colors.red)),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newNote = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNoteScreen(),
            ),
          );

          if (newNote != null) {
            setState(() {
              notes.add(newNote);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}