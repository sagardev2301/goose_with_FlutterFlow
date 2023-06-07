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

class CustomImage extends StatefulWidget {
  const CustomImage({
    Key? key,
    this.width,
    this.height,
    this.image,
  }) : super(key: key);

  final double? width;
  final double? height;
  final FFUploadedFile? image;

  @override
  _CustomImageState createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: widget.image != null
          ? Image.memory(widget.image!.bytes!)
          : const SizedBox.shrink(),
    );
  }
}
