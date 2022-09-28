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
  int firstVal = 0;
  int secondVal = 0;
  String operation = '';
  String displayText = '';
  String result = '';

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
                displayText,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          Row(
            children: [
              CustomOutlinedButton(
                label: '9',
                onPressedButton: () => onButtonClicked('9'),
              ),
              CustomOutlinedButton(
                label: '8',
                onPressedButton: () => onButtonClicked('8'),
              ),
              CustomOutlinedButton(
                label: '7',
                onPressedButton: () => onButtonClicked('7'),
              ),
              CustomOutlinedButton(
                label: '+',
                onPressedButton: () => onButtonClicked('+'),
              ),
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton(
                label: '6',
                onPressedButton: () => onButtonClicked('6'),
              ),
              CustomOutlinedButton(
                label: '5',
                onPressedButton: () => onButtonClicked('5'),
              ),
              CustomOutlinedButton(
                label: '4',
                onPressedButton: () => onButtonClicked('4'),
              ),
              CustomOutlinedButton(
                label: '-',
                onPressedButton: () => onButtonClicked('-'),
              ),
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton(
                label: '3',
                onPressedButton: () => onButtonClicked('3'),
              ),
              CustomOutlinedButton(
                label: '2',
                onPressedButton: () => onButtonClicked('2'),
              ),
              CustomOutlinedButton(
                label: '1',
                onPressedButton: () => onButtonClicked('1'),
              ),
              CustomOutlinedButton(
                label: '*',
                onPressedButton: () => onButtonClicked('*'),
              ),
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton(
                label: 'C',
                onPressedButton: () => onButtonClicked('C'),
              ),
              CustomOutlinedButton(
                label: '0',
                onPressedButton: () => onButtonClicked('0'),
              ),
              CustomOutlinedButton(
                label: '=',
                onPressedButton: () => onButtonClicked('='),
              ),
              CustomOutlinedButton(
                label: '/',
                onPressedButton: () => onButtonClicked('/'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onButtonClicked(String value) {
    if (value == 'C') {
      result = '';
      displayText = '';
      firstVal = 0;
      secondVal = 0;
    } else if (value == '+' || value == '-' || value == '*' || value == '/') {
      firstVal = int.parse(displayText);
      result = '';
      operation = value;
    } else if (value == "=") {
      secondVal = int.parse(displayText);
      if (operation == '+') {
        result = (firstVal + secondVal).toString();
      }
      if (operation == '-') {
        result = (firstVal - secondVal).toString();
      }
      if (operation == '*') {
        result = (firstVal * secondVal).toString();
      }
      if (operation == '/') {
        result = (firstVal ~/ secondVal).toString();
      }
    } else {
      result = (displayText + value).toString();
    }
    setState(() {
      displayText = result;
    });
  }
}

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {Key? key, required this.label, required this.onPressedButton})
      : super(key: key);

  final String label;
  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: OutlinedButton(
          onPressed: onPressedButton,
          child: Text(label),
        ),
      ),
    );
  }
}
