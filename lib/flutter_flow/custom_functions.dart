import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? renameImageURLs(List<String>? imageURLs) {
  // for each string in the input list replace ".jpeg" to "rez.jpeg" and ".png" to "rez.png"
  if (imageURLs == null) {
    return null;
  }
  List<String> newImageURLs = [];
  for (String url in imageURLs) {
    newImageURLs.add(url);
  }
  // for (String imageURL in imageURLs) {
  //   if (imageURL.contains(".jpeg")) {
  //     newImageURLs.add(imageURL.replaceAll(".jpeg", "_1000x1000.jpeg"));
  //   } else if (imageURL.contains(".jpg")) {
  //     newImageURLs.add(imageURL.replaceAll(".jpg", "_1000x1000.jpeg"));
  //   } else if (imageURL.contains(".png")) {
  //     newImageURLs.add(imageURL.replaceAll(".png", "_1000x1000.jpeg"));
  //   } else if (imageURL.contains(".tiff")) {
  //     newImageURLs.add(imageURL.replaceAll(".tiff", "_1000x1000.jpeg"));
  //   } else if (imageURL.contains(".webp")) {
  //     newImageURLs.add(imageURL.replaceAll(".webp", "_1000x1000.jpeg"));
  //   } else if (imageURL.contains(".gif")) {
  //     newImageURLs.add(imageURL.replaceAll(".gif", "_1000x1000.jpeg"));
  //   } else {
  //     newImageURLs.add(imageURL);
  //   }
  // }
  return newImageURLs;
}
