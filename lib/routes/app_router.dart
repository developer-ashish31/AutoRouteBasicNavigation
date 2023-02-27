import 'package:auto_route/auto_route.dart';
import 'package:nested_navigation/pages/dashboard_page.dart';
import 'package:nested_navigation/pages/post_page.dart';
import 'package:nested_navigation/pages/setting_page.dart';
import 'package:nested_navigation/pages/user_page.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(path: '/', page: DashboardPage, children: [
    RedirectRoute(path: '', redirectTo: 'postPage'),
    AutoRoute(path: 'postPage', page: PostPage),
    AutoRoute(page: UserPage),
    AutoRoute(page: SettingPage),
  ]),
])
class $AppRouter {}

// RedirectRoute(path: '', redirectTo: 'post-page'),
