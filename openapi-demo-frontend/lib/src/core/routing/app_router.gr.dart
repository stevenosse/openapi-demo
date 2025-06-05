// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginScreen());
    },
  );
}

/// generated route for
/// [TodoListScreen]
class TodoListRoute extends PageRouteInfo<void> {
  const TodoListRoute({List<PageRouteInfo>? children})
    : super(TodoListRoute.name, initialChildren: children);

  static const String name = 'TodoListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const TodoListScreen());
    },
  );
}
