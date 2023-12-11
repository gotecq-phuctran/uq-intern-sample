import 'package:flutter/material.dart';
import 'package:flutter_application_1/bootstrap/router_builder.dart';

class NoteListingPage extends StatelessWidget {
  const NoteListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Listing Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Note Listing Page'),
            ElevatedButton(
              onPressed: () async {
                final result = await const NoteDetailRoute(
                    noteId: '123456',
                    $extra: {'1': 'abc'}).push<bool?>(context);

                if (result == true) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Reloaded'),
                  ));
                }
              },
              child: const Text('Go go Detail'),
            )
          ],
        ),
      ),
    );
  }
}
