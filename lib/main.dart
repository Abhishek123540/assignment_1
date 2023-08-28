import 'package:assignment_1/Screens/explore_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

final theme = ThemeData(
  primarySwatch: Colors.teal,
  primaryColor: const Color(0xff1e2839),
  appBarTheme: const AppBarTheme(
    color: Color(0xff1e2839),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xff1e2839),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Color(0xff1e2839),
  ),
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Netclan',
      home: const ExploreScreen(),
    );
  }
}
