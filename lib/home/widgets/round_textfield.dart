import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController controller;
  const RoundTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration:  const InputDecoration.collapsed(
                hintText: '
            ),
            controller: controller,
          ),
        ),
      ),
    );
  }
}
