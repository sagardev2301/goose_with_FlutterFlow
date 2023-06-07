// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class AddPhotosButton extends StatefulWidget {
  const AddPhotosButton({
    Key? key,
    this.width,
    this.height,
    required this.buttonName,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String buttonName;

  @override
  _AddPhotosButtonState createState() => _AddPhotosButtonState();
}

class _AddPhotosButtonState extends State<AddPhotosButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add_box_rounded,
              size: 25,
              color: Colors.grey[400],
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              widget.buttonName,
              style: TextStyle(fontSize: 15, color: Colors.grey[500]),
            )
          ],
        ),
      ),
    );
  }
}
