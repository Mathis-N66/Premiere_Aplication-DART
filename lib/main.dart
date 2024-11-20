import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Premiere pplication MathisN',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Premiere Application Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  String _phrase = "Clic avant explosion :";
  Color _couleur = Colors.white;

  void _incrementCounter() {
    setState(() {
      if(_counter>=1){
        _counter--;
      }
      if(_counter==0){
        _phrase = "BOOM!";
        _couleur = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle _tS = _phrase == "BOOM!"
        ? const TextStyle(
            color: Color.fromARGB(255, 255, 187, 0),
            fontSize: 90,
          )
        : const TextStyle(
            color: Color.fromRGBO(71, 148, 159, 0.969),
            fontSize: 30,
          );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _phrase,
              style: _tS,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
      backgroundColor: _couleur,
    );
  }
}
