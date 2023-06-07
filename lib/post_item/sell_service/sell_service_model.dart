import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SellServiceModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> imagesSelectedLocal = [];
  void addToImagesSelectedLocal(String item) => imagesSelectedLocal.add(item);
  void removeFromImagesSelectedLocal(String item) =>
      imagesSelectedLocal.remove(item);
  void removeAtIndexFromImagesSelectedLocal(int index) =>
      imagesSelectedLocal.removeAt(index);

  String? buttonName = 'Add Photos';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel1;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel2;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel3;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel4;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel5;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel6;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel7;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel8;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? post;
  // Stores action output result for [Custom Action - uploadImagesToFirebase] action in Button widget.
  List<String>? imagURLs;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sizedBoxModel1 = createModel(context, () => SizedBoxModel());
    sizedBoxModel2 = createModel(context, () => SizedBoxModel());
    sizedBoxModel3 = createModel(context, () => SizedBoxModel());
    sizedBoxModel4 = createModel(context, () => SizedBoxModel());
    sizedBoxModel5 = createModel(context, () => SizedBoxModel());
    sizedBoxModel6 = createModel(context, () => SizedBoxModel());
    sizedBoxModel7 = createModel(context, () => SizedBoxModel());
    sizedBoxModel8 = createModel(context, () => SizedBoxModel());
  }

  void dispose() {
    sizedBoxModel1.dispose();
    textController1?.dispose();
    sizedBoxModel2.dispose();
    sizedBoxModel3.dispose();
    sizedBoxModel4.dispose();
    sizedBoxModel5.dispose();
    textController2?.dispose();
    sizedBoxModel6.dispose();
    sizedBoxModel7.dispose();
    textController3?.dispose();
    sizedBoxModel8.dispose();
  }

  /// Additional helper methods are added here.

}
