// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

Future<List<String>> uploadImagesToFirebase(
  List<String> imagesList,
  DocumentReference? post,
  DocumentReference? user,
) async {
  // Add your function code here!

  List<String> imageUrls = [];

  if (imagesList.isNotEmpty) {
    for (var image in imagesList) {
      var ref = FirebaseStorage.instance
          .ref()
          .child('users')
          .child(user!.id)
          .child(post!.id)
          .child('/${image.substring(image.lastIndexOf('/') + 1)}');

      // Upload the image to Firebase Storage
      TaskSnapshot taskSnapshot = await ref.putFile(File(image));

      // Get the download URL of the image
      String downloadUrl = await taskSnapshot.ref.getDownloadURL();

      // Add the download URL to the list of image URLs
      imageUrls.add(downloadUrl);
    }
  }

  return imageUrls;
}
