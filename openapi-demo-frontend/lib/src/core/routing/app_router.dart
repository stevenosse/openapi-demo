import 'package:auto_route/auto_route.dart';
import 'package:openapi_demo_frontend/src/features/login/ui/login_screen.dart';
import 'package:openapi_demo_frontend/src/features/todos/ui/todo_list_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: TodoListRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
  ];
}
