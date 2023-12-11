import 'package:flutter/material.dart';
import 'package:flutter_application_1/bootstrap/router_builder.dart';

class LabelManagementPage extends StatelessWidget {
  final String noteId;

  const LabelManagementPage({
    super.key,
    required this.noteId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Label Management'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Label Management'),
            ElevatedButton(
                onPressed: () {
                  LabelDetailRoute(noteId: noteId).push(context);
                },
                child: const Text('label detail'))
          ],
        ),
      ),
    );
  }
}
