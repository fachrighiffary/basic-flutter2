import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  context: context,
                  isDismissible: false,
                  builder: (context) => Container(
                    height: 300,
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () => {print('photo')},
                          leading: Icon(Icons.photo),
                          title: Text('Photo'),
                        ),
                        ListTile(
                          leading: Icon(Icons.camera),
                          title: Text('Camera'),
                        ),
                        ListTile(
                          leading: Icon(Icons.album),
                          title: Text('Galery'),
                        ),
                        ListTile(
                          leading: Icon(Icons.video_call),
                          title: Text('Video'),
                        ),
                        ListTile(
                          onTap: () => Navigator.pop(context),
                          leading: Icon(Icons.cancel),
                          title: Text('Cancel'),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text('SHOW BOTTOM SHEEt')),
        ),
      ),
    );
  }
}
