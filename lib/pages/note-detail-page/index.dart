import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NoteDetailPage extends StatelessWidget {
  final String noteId;
  final bool isImportant;
  final Map<String, String>? extra;

  static const String titleFieldName = 'title';
  static const String descriptionFieldName = 'description';

  const NoteDetailPage({
    super.key,
    required this.noteId,
    this.isImportant = false,
    this.extra,
  });

  @override
  Widget build(BuildContext context) {
    final formGroup = FormGroup({
      NoteDetailPage.titleFieldName: FormGroup({
        'abc': FormControl(),
        'def': FormControl(),
      }),
      NoteDetailPage.descriptionFieldName: FormControl<String>(),
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Detail'),
      ),
      body: ReactiveForm(
        formGroup: formGroup,
        child: Center(
          child: Column(
            children: [
              ReactiveTextField(
                formControlName: NoteDetailPage.titleFieldName,
                decoration: const InputDecoration(hintText: 'Title'),
              ),
              ReactiveTextField(
                formControlName: NoteDetailPage.descriptionFieldName,
                decoration: const InputDecoration(hintText: 'Description'),
              ),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  formGroup.markAllAsTouched();

                  print(formGroup.value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
