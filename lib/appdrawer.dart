import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Navigator'),
        ),
        drawer: Drawer(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20),
                height: 100,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  'Darhboard Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      onTap: () => print('Pindah ke page Home'),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Home'),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Home'),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Home'),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Home'),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Home'),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Home'),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      onTap: () => print('Pindah ke page Product'),
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Product"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
