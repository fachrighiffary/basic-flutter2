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
      appBar: AppBar(title: Text('SnackBar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.amber,
              duration: Duration(seconds: 1),
              content: Text('Delete product berhasil'),
              margin: EdgeInsets.all(10),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              action: SnackBarAction(
                  label: 'CANCEL',
                  onPressed: () {
                    print('Tidak jadi hapus product');
                  }),
            ));
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
