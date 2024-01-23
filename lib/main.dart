import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wearable App',
      theme: ThemeData(
        visualDensity: VisualDensity.compact,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }




  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _decrementCounter,
                  child: Container(width: MediaQuery.sizeOf(context).width/2.5,
                    height: MediaQuery.sizeOf(context).height/5,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Theme.of(context).colorScheme.primary.withOpacity(.3)),
                    child: Icon(Icons.remove,color: Theme.of(context).colorScheme.primary,),),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                GestureDetector(
                  onTap: _incrementCounter,
                  child: Container(width: MediaQuery.sizeOf(context).width/2.5,
                    height: MediaQuery.sizeOf(context).height/5,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Theme.of(context).colorScheme.primary.withOpacity(.3)),
                    child: Icon(Icons.add,color: Theme.of(context).colorScheme.primary,),),
                ),
              ],
            ),


          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
