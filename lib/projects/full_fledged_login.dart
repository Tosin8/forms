import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: Container(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: textController,
            decoration: const InputDecoration(
                hintText: 'Enter Info', labelText: 'Enter here'),
          )),
    );
  }
}
