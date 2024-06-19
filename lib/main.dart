import 'package:flutter/material.dart';
import 'package:nexus/page/home.dart';
import 'package:nexus/page/mypage.dart';
import 'package:nexus/page/project.dart';
import 'package:nexus/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CurrentPageProvider(),
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nexus App',
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        scaffoldBackgroundColor: Colors.grey[200],
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0x20, 0x20, 0x20, 1)),
        ),
      ),
      home: Scaffold(
        appBar: const Header(),
        body: Consumer<CurrentPageProvider>(
          builder: (context, currentPageProvider, child) {
            return [
              HomePage(),
              ProjectPage(),
              MyPage(),
            ][currentPageProvider.currentPage];
          },
        ),
        bottomNavigationBar: const FootNavigator(),
      ),
    );
  }
}

class Header extends StatelessWidget implements PreferredSizeWidget {
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
        Provider.of<CurrentPageProvider>(context, listen: false)
            .setCurrentPage(index);
      },
      selectedIndex: Provider.of<CurrentPageProvider>(context).currentPage,
    );
  }
}
