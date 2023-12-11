// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_builder.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $noteListingRoute,
    ];

RouteBase get $noteListingRoute => GoRouteData.$route(
      path: '/',
      factory: $NoteListingRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':noteId',
          factory: $NoteDetailRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'label-management',
              factory: $LabelManagementRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'label-detail',
                  factory: $LabelDetailRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'label-setting',
                  factory: $LabelSettingRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $NoteListingRouteExtension on NoteListingRoute {
  static NoteListingRoute _fromState(GoRouterState state) =>
      const NoteListingRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NoteDetailRouteExtension on NoteDetailRoute {
  static NoteDetailRoute _fromState(GoRouterState state) => NoteDetailRoute(
        noteId: state.pathParameters['noteId']!,
        isImportant: _$convertMapValue(
                'is-important', state.uri.queryParameters, _$boolConverter) ??
            false,
        $extra: state.extra as Map<String, String>?,
      );

  String get location => GoRouteData.$location(
        '/${Uri.encodeComponent(noteId)}',
        queryParams: {
          if (isImportant != false) 'is-important': isImportant.toString(),
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $LabelManagementRouteExtension on LabelManagementRoute {
  static LabelManagementRoute _fromState(GoRouterState state) =>
      LabelManagementRoute(
        noteId: state.pathParameters['noteId']!,
        isImportant: _$convertMapValue(
                'is-important', state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/${Uri.encodeComponent(noteId)}/label-management',
        queryParams: {
          if (isImportant != false) 'is-important': isImportant.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LabelDetailRouteExtension on LabelDetailRoute {
  static LabelDetailRoute _fromState(GoRouterState state) => LabelDetailRoute(
        noteId: state.pathParameters['noteId']!,
        isImportant: _$convertMapValue(
                'is-important', state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/${Uri.encodeComponent(noteId)}/label-management/label-detail',
        queryParams: {
          if (isImportant != false) 'is-important': isImportant.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LabelSettingRouteExtension on LabelSettingRoute {
  static LabelSettingRoute _fromState(GoRouterState state) => LabelSettingRoute(
        noteId: state.pathParameters['noteId']!,
        isImportant: _$convertMapValue(
                'is-important', state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/${Uri.encodeComponent(noteId)}/label-management/label-setting',
        queryParams: {
          if (isImportant != false) 'is-important': isImportant.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}
