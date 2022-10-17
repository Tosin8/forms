import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: Container(
          padding: const EdgeInsets.all(10.0),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Info',
            ),
          )),
    );
  }
}
