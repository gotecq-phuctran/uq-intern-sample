import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/label-setting-page/index.dart';
import 'package:go_router/go_router.dart';

import '../feature/index.dart';

part 'router_builder.g.dart';

@TypedGoRoute<NoteListingRoute>(
  path: NoteListingRoute.path,
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<NoteDetailRoute>(
      path: NoteDetailRoute.path,
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<LabelManagementRoute>(
          path: LabelManagementRoute.path,
          routes: <TypedGoRoute<GoRouteData>>[
            TypedGoRoute<LabelDetailRoute>(path: LabelDetailRoute.path),
            TypedGoRoute<LabelSettingRoute>(path: LabelSettingRoute.path),
          ],
        ),
      ],
    ),
  ],
)
class NoteListingRoute extends GoRouteData {
  static const String path = '/';

  const NoteListingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NoteListingPage();
}

class NoteDetailRoute extends GoRouteData {
  static const String path = ':noteId';

  final String noteId;
  final bool isImportant;
  final Map<String, String>? $extra;

  const NoteDetailRoute({
    required this.noteId,
    this.isImportant = false,
    this.$extra,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return NoteDetailPage(
      noteId: noteId,
      isImportant: isImportant,
      extra: $extra,
    );
  }
}

class LabelManagementRoute extends GoRouteData {
  static const String path = 'label-management';

  final String noteId;
  final bool isImportant;

  const LabelManagementRoute({
    required this.noteId,
    this.isImportant = false,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      LabelManagementPage(
        noteId: noteId,
      );
}

class LabelDetailRoute extends GoRouteData {
  static const String path = 'label-detail';

  final String noteId;
  final bool isImportant;

  const LabelDetailRoute({
    required this.noteId,
    this.isImportant = false,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) => LabelDetailPage(
        noteId: noteId,
      );
}

class LabelSettingRoute extends GoRouteData {
  static const String path = 'label-setting';

  final String noteId;
  final bool isImportant;

  const LabelSettingRoute({
    required this.noteId,
    this.isImportant = false,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) => LabelSettingPage(
        noteId: noteId,
      );
}
