import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          backgroundColor: Colors.teal,
          centerTitle: false,
          bottom: TabBar(controller: tabC, tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Icon(Icons.chat)),
            Tab(
              text: 'Status',
            ),
            Tab(child: Icon(Icons.phone)),
          ]),
        ),
        body: TabBarView(controller: tabC, children: [
          Center(child: Text('Camera')),
          Center(child: Text('Chats')),
          Center(child: Text('Status')),
          Center(child: Text('Calls')),
        ]),
      ),
    );
  }
}
