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

import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddandShowPhotos extends StatefulWidget {
  AddandShowPhotos({
    Key? key,
    this.width,
    this.height,
    required this.imageFileList,
  }) : super(key: key);

  final double? width;
  final double? height;
  List<String> imageFileList;

  @override
  _AddandShowPhotosState createState() => _AddandShowPhotosState();
}

class _AddandShowPhotosState extends State<AddandShowPhotos> {
  final ImagePicker picker = ImagePicker();
  List<XFile> imagesToDisplay = [];
  Set<String> imagesName = {};
  String buttonName = 'Add Photos';
  Future<void> selectImages() async {
    List<XFile>? imagesSelected = await picker.pickMultiImage();
    setState(() {
      if (imagesSelected!.isNotEmpty) {
        for (var image in imagesSelected) {
          if (!imagesName.contains(image.name)) {
            imagesToDisplay.add(image);
            imagesName.add(image.name);
          }
        }

        for (var image in imagesToDisplay) {
          widget.imageFileList.add(image.path);
        }

        buttonName = 'Add more photos';
      }
    });
  }

  void _deleteImage(int index) {
    setState(() {
      imagesName
          .removeWhere((element) => element == imagesToDisplay[index].name);
      imagesToDisplay.removeAt(index);
      widget.imageFileList.removeAt(index);
      if (imagesToDisplay.isEmpty) buttonName = 'Add Photos';
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Wrap(
            children: imagesToDisplay
                .map((item) => photoContainer(width, item))
                .toList(),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
            onTap: selectImages,
            child: AddPhotosButton(buttonName: buttonName)),
      ],
    );
  }

  Container photoContainer(double width, XFile item) {
    return Container(
      height: 100,
      width: width * 0.30,
      padding: const EdgeInsets.all(2),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 95,
              width: width * 0.28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.file(
                  File(item.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              onPressed: () => _deleteImage(imagesToDisplay.indexOf(item)),
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 20,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
