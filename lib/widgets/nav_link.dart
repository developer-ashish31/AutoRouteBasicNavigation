import 'package:flutter/material.dart';

class NavLink extends StatelessWidget {
  const NavLink({Key? key, this.title = 'Page Name', this.route = '/notFound'})
      : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ListTile(
          title: Text(title),
          onTap: () {
            // go to route ...
            // Navigator.push(context, route);
            Navigator.pushNamed(context, route);
            // close the nav after navigating
            // Navigator.pop(context);
          }),
    );
  }
}
