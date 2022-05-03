import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My First App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(
          () {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        _counter++;
      },
    );
  }

  void _decrementCounter() {
    setState(
          () {
        if (_counter == 0) {
          _counter = 0;
        } else {
          _counter--;
        }
      },
    );
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[900],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Espaçamento entre os botões
              Padding(
                padding:
                const EdgeInsets.only(bottom: 50, right: 100, left: 100),
                child: Text(
                  _counter.toString(),
                  style: const TextStyle(
                    fontFamily: 'sans-serif-condensed',
                    fontWeight: FontWeight.w900,
                    fontSize: 120,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                //Espaçamento entre a primeira linha de botões e a segunda
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 40,
                        onPressed: _decrementCounter,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                      height: 0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_upward),
                        iconSize: 40,
                        onPressed: _incrementCounter,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.refresh),
                  iconSize: 40,
                  onPressed: _resetCounter,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
