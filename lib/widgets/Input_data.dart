// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputData extends StatefulWidget {
  final String name, hintText;
  final bool isPass;
  const InputData(
      {key, required this.name, required this.hintText, required this.isPass})
      : super(key: key);

  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: Text(widget.name,
                style: TextStyle(fontWeight: FontWeight.bold))),
        TextField(
          decoration: new InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(fontSize: 16),
              focusedBorder: OutlineInputBorder(),
              suffixIcon: widget.isPass
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                      icon: Icon(obsecureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    )
                  : null,
              border: OutlineInputBorder(),
              isDense: true),
          obscureText: !obsecureText,
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
