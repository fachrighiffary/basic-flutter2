import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List data = [
    {"judul": 'Pilihan ke - 1', "data": 1},
    {"judul": 'Pilihan ke - 2', "data": 2},
    {"judul": 'Pilihan ke - 3', "data": 3},
  ];

  late int dataAwal;

  @override
  void initState() {
    // TODO: implement initState
    dataAwal = data[0]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DropDown'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: DropdownButton<int>(
              value: dataAwal,
              items: data
                  .map((e) => DropdownMenuItem(
                        child: Text('Tampilan - ${e["judul"]}'),
                        value: e['data'] as int,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  dataAwal = value!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
