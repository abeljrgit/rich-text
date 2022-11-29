import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Markdown Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Markdown Converter'),
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
  String markdownRawValue = '';

  final TextEditingController _markdownRawValuetextFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextField(
            controller: _markdownRawValuetextFieldController,
            maxLines: 20,
            keyboardType: TextInputType.multiline,
            onChanged: (value) {
              setState(() {
                _markdownRawValuetextFieldController.text = value;
                _markdownRawValuetextFieldController.selection =
                    TextSelection.fromPosition(TextPosition(
                        offset:
                            _markdownRawValuetextFieldController.text.length));
              });
            },
          ),
          Expanded(
            child: Container(
              color: const Color(0xFFC4C4C4),
              height: 1000,
              child: Markdown(data: _markdownRawValuetextFieldController.text),
            ),
          ),
        ],
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
