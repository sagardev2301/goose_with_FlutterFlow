import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sign_in_sign_up/email_verification/email_verification_widget.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel1;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel2;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel3;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel4;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter name';
    }

    if (val.length < 4) {
      return 'Please enter valid name';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel5;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel6;
  // State field(s) for TextField widget.
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid email';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel7;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel8;
  // State field(s) for TextField widget.
  TextEditingController? passwordTextController;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Please enter password greater than length 8';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel9;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel10;
  // State field(s) for TextField widget.
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  String? _confirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password do not matches';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel11;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel12;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sizedBoxModel1 = createModel(context, () => SizedBoxModel());
    sizedBoxModel2 = createModel(context, () => SizedBoxModel());
    sizedBoxModel3 = createModel(context, () => SizedBoxModel());
    sizedBoxModel4 = createModel(context, () => SizedBoxModel());
    textController1Validator = _textController1Validator;
    sizedBoxModel5 = createModel(context, () => SizedBoxModel());
    sizedBoxModel6 = createModel(context, () => SizedBoxModel());
    emailTextControllerValidator = _emailTextControllerValidator;
    sizedBoxModel7 = createModel(context, () => SizedBoxModel());
    sizedBoxModel8 = createModel(context, () => SizedBoxModel());
    passwordVisibility1 = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    sizedBoxModel9 = createModel(context, () => SizedBoxModel());
    sizedBoxModel10 = createModel(context, () => SizedBoxModel());
    passwordVisibility2 = false;
    confirmPasswordTextControllerValidator =
        _confirmPasswordTextControllerValidator;
    sizedBoxModel11 = createModel(context, () => SizedBoxModel());
    sizedBoxModel12 = createModel(context, () => SizedBoxModel());
  }

  void dispose() {
    sizedBoxModel1.dispose();
    sizedBoxModel2.dispose();
    sizedBoxModel3.dispose();
    sizedBoxModel4.dispose();
    textController1?.dispose();
    sizedBoxModel5.dispose();
    sizedBoxModel6.dispose();
    emailTextController?.dispose();
    sizedBoxModel7.dispose();
    sizedBoxModel8.dispose();
    passwordTextController?.dispose();
    sizedBoxModel9.dispose();
    sizedBoxModel10.dispose();
    confirmPasswordTextController?.dispose();
    sizedBoxModel11.dispose();
    sizedBoxModel12.dispose();
  }

  /// Additional helper methods are added here.

}
