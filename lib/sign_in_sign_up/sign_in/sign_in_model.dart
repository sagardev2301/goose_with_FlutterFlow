import '/auth/firebase_auth/auth_util.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/sign_in_sign_up/email_verification/email_verification_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SignInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel1;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel2;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel3;
  // State field(s) for TextField widget.
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter valid email.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel4;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel5;
  // State field(s) for TextField widget.
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pass';
    }

    if (val.length < 8) {
      return 'Minimum Password length should be 8';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel7;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel8;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sizedBoxModel1 = createModel(context, () => SizedBoxModel());
    sizedBoxModel2 = createModel(context, () => SizedBoxModel());
    sizedBoxModel3 = createModel(context, () => SizedBoxModel());
    emailTextControllerValidator = _emailTextControllerValidator;
    sizedBoxModel4 = createModel(context, () => SizedBoxModel());
    sizedBoxModel5 = createModel(context, () => SizedBoxModel());
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    sizedBoxModel6 = createModel(context, () => SizedBoxModel());
    sizedBoxModel7 = createModel(context, () => SizedBoxModel());
    sizedBoxModel8 = createModel(context, () => SizedBoxModel());
  }

  void dispose() {
    sizedBoxModel1.dispose();
    sizedBoxModel2.dispose();
    sizedBoxModel3.dispose();
    emailTextController?.dispose();
    sizedBoxModel4.dispose();
    sizedBoxModel5.dispose();
    passwordTextController?.dispose();
    sizedBoxModel6.dispose();
    sizedBoxModel7.dispose();
    sizedBoxModel8.dispose();
  }

  /// Additional helper methods are added here.

}
