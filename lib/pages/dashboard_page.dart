import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation/routes/app_router.gr.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Navigation'),
      ),
      body: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              onPressed: () {
                context.router.replace(const PostRoute());
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text('Post', style: TextStyle(color: Colors.white)),
            ),
            OutlinedButton(
              onPressed: () {
                context.router.replace(const UserRoute());
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
              child: const Text('User', style: TextStyle(color: Colors.white)),
            ),
            OutlinedButton(
              onPressed: () {
                context.router.replace(const SettingRoute());
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text(
                'Setting',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        const Expanded(
            // nested routes will be rendered here
            child: AutoRouter()
            // buildAutoTabsRouter()
            // buildAutoTabsRouterTabBar()
            //   buildAutoTabsRouterPageView()
            ),
      ]),
    );
  }

  /// AutoTabsRouter

  AutoTabsRouter buildAutoTabsRouterTabBar() {
    return AutoTabsRouter.tabBar(
      routes: const [
        UserRoute(),
        PostRoute(),
        SettingRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: 'User', icon: Icon(Icons.person)),
                Tab(text: 'Post', icon: Icon(Icons.post_add)),
                Tab(text: 'Setting', icon: Icon(Icons.settings)),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}

AutoTabsRouter buildAutoTabsRouter() {
  return AutoTabsRouter(
// list of your tab routes
// routes used here must be declaraed as children
// routes of /dashboard
    routes: const [
      UserRoute(),
      PostRoute(),
      SettingRoute(),
    ],
    builder: (context, child, animation) {
// obtain the scoped TabsRouter controller using context
      final tabsRouter = AutoTabsRouter.of(context);
// Here we're building our Scaffold inside of AutoTabsRouter
// to access the tabsRouter controller provided in this context
//
//alterntivly you could use a global key
      return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
          ),
          body: FadeTransition(
            opacity: animation,
// the passed child is techinaclly our animated selected-tab page
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
// here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                  label: 'Users',
                  icon: Icon(
                    Icons.person,
                    size: 40,
                  )),
              BottomNavigationBarItem(
                  label: 'Posts',
                  icon: Icon(
                    Icons.post_add,
                    size: 40,
                  )),
              BottomNavigationBarItem(
                  label: 'Settings',
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                  )),
            ],
          ));
    },
  );
}

AutoTabsRouter buildAutoTabsRouterPageView() {
  return AutoTabsRouter.pageView(
    routes: const [
      UserRoute(),
      PostRoute(),
      SettingRoute(),
    ],
    builder: (context, child, _) {
      final tabsRouter = AutoTabsRouter.of(context);
      return Scaffold(
        appBar: AppBar(
            title: Text(context.topRoute.name), leading: AutoLeadingButton()),
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'Users',
                icon: Icon(
                  Icons.person,
                  size: 60,
                )),
            BottomNavigationBarItem(
                label: 'Posts',
                icon: Icon(
                  Icons.post_add,
                  size: 60,
                )),
            BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(
                  Icons.settings,
                  size: 60,
                ))
          ],
        ),
      );
    },
  );
}
