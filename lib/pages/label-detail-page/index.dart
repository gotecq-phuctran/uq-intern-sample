import 'package:flutter/material.dart';
import 'package:flutter_application_1/bootstrap/router_builder.dart';

class LabelDetailPage extends StatelessWidget {
  final String noteId;

  const LabelDetailPage({super.key, required this.noteId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Label detail'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Label detail'),
            ElevatedButton(
                onPressed: () {
                  LabelSettingRoute(noteId: noteId).push(context);
                },
                child: const Text('go label setting'))
          ],
        ),
      ),
    );
  }
}
