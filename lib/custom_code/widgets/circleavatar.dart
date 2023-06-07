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

class Circleavatar extends StatefulWidget {
  const Circleavatar({
    Key? key,
    this.width,
    this.height,
    required this.user,
  }) : super(key: key);

  final double? width;
  final double? height;
  final DocumentReference user;

  @override
  _CircleavatarState createState() => _CircleavatarState();
}

class _CircleavatarState extends State<Circleavatar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// // Automatic FlutterFlow imports
// import '/backend/backend.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/custom_code/widgets/index.dart'; // Imports other custom widgets
// import '/custom_code/actions/index.dart'; // Imports custom actions
// import '/flutter_flow/custom_functions.dart'; // Imports custom functions
// import 'package:flutter/material.dart';
// // Begin custom widget code
// // DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import 'dart:io';
// import 'dart:math';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:random_avatar/random_avatar.dart';

// class Circleavatar extends StatefulWidget {
//   const Circleavatar({
//     Key? key,
//     this.width,
//     this.height,
//     required this.user,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final DocumentReference user;
//   @override
//   _CircleavatarState createState() => _CircleavatarState();
// }

// class _CircleavatarState extends State<Circleavatar> {
//   late Widget svgCode =
//       RandomAvatar(Random().toString(), height: 120, width: 120);

//   Future<void> selectImage({required ImageSource source}) async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.pickImage(source: source);

//     setState(() {
//       if (pickedImage != null) {
//         svgCode = Container(
//           height: 120,
//           width: 120,
//           decoration: const BoxDecoration(shape: BoxShape.circle),
//           child: ClipRRect(
//               borderRadius: BorderRadius.circular(200),
//               child: Image.file(
//                 File(pickedImage.path),
//                 fit: BoxFit.cover,
//               )),
//         );
//       }
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     if(widget.user.photo_url != null){
//       svgCode = Container(
//           height: 120,
//           width: 120,
//           decoration: const BoxDecoration(shape: BoxShape.circle),
//           child: ClipRRect(
//               borderRadius: BorderRadius.circular(200),
//               child: Image.
//             ),
//         );
//     }
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final navigator = Navigator.of(context);
//     return SizedBox(
//       height: widget.height,
//       width: widget.width,
//       child: Stack(
//         children: [
//           SizedBox(height: widget.height, width: widget.width, child: svgCode),
//           Positioned(
//             bottom: 0,
//             right: 10,
//             child: GestureDetector(
//               onTap: () async {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       contentPadding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
//                       backgroundColor: Colors.grey[800],
//                       content: SizedBox(
//                         height: 80,
//                         width: 50,
//                         child: Center(
//                           child: Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   selectImage(source: ImageSource.camera);
//                                   navigator.pop();
//                                 },
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       FontAwesomeIcons.camera,
//                                       size: 30,
//                                       color: Theme.of(context).primaryColor,
//                                     ),
//                                     const SizedBox(
//                                       width: 20,
//                                     ),
//                                     Text(
//                                       'Camera',
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .bodyMedium,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   selectImage(source: ImageSource.gallery);
//                                   navigator.pop();
//                                 },
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       FontAwesomeIcons.image,
//                                       size: 30,
//                                       color: Theme.of(context).primaryColor,
//                                     ),
//                                     const SizedBox(
//                                       width: 20,
//                                     ),
//                                     Text(
//                                       'Gallery',
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .bodyMedium,
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                     );
//                   },
//                 );
//               },
//               child: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   color: Colors.red,
//                 ),
//                 child: const Icon(FontAwesomeIcons.pen,
//                     color: Colors.white, size: 16),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
