import 'package:flutter/material.dart';
import 'package:flutter_application_1/bootstrap/router_builder.dart';

class LabelSettingPage extends StatelessWidget {
  final String noteId;

  const LabelSettingPage({super.key, required this.noteId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Label setting'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Label setting'),
            ElevatedButton(
                onPressed: () {
                  LabelDetailRoute(noteId: noteId).replace(context);
                },
                child: const Text('go label detail'))
          ],
        ),
      ),
    );
  }
}
