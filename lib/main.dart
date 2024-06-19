import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        primaryColorDark: Colors.black54,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(0x20, 0x20, 0x20,1)),
        ),
      ),
      home: Scaffold(
        appBar: Header(),
        body: Column(
          children: <Widget>[
          ],
        ),
        bottomNavigationBar: FootNavigator(),
      ),
    );
  }
}
class Header extends StatelessWidget implements PreferredSizeWidget{
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return AppBar(
      title: Text('Nexus', style: theme.textTheme.titleLarge),
      backgroundColor: theme.primaryColor,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class FootNavigator extends StatefulWidget {
  const FootNavigator({super.key});

  @override
  _FootNavigatorState createState() => _FootNavigatorState();
}
class _FootNavigatorState extends State<FootNavigator> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "home"),
        NavigationDestination(icon: Icon(Icons.lightbulb), label: "project"),
        NavigationDestination(icon: Icon(Icons.person), label: "my page"),
      ],
      onDestinationSelected: (index) {
        setState(() {
          currentPage = index;
        });
      },
      selectedIndex: currentPage,
    );
  }

}