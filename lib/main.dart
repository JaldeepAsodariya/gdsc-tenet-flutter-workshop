import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GDSC Tenet Calculator'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                '0',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('9'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('8'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('7'),),),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('+'),),),
              const SizedBox(width: 8.0,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('6'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('5'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('4'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('-'),)),
              const SizedBox(width: 8.0,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('3'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('2'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('1'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('x'),)),
              const SizedBox(width: 8.0,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('C'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('0'),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('='),)),
              const SizedBox(width: 8.0,),
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('/'),)),
              const SizedBox(width: 8.0,),
            ],
          ),
        ],
      ),
    );
  }
}
