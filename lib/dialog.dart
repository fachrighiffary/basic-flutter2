import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      title: Text('Judul'),
                      content: Text('Ini adalah deskripsi dialog'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('OK'),
                        )
                      ],
                    ));
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
