import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

//stateless => tampilan static -> tidak terjadi perubahan state pada screen
//statefull => tampilan dinamis => terjadi perubahan pada screen ketika ada perubahan state

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  // const CounterApp({super.key});
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Increment Apps'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${nilai}',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        nilai = nilai - 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        // print('dikurang');
                        nilai = nilai + 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.add)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
