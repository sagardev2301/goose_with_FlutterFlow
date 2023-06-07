import '/auth/firebase_auth/auth_util.dart';
import '/components/custom_button_widget.dart';
import '/components/custom_sign_in_buton_widget.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main.dart';
import '/sign_in_sign_up/sign_in/sign_in_widget.dart';
import '/sign_in_sign_up/sign_up/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SignInOptionsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel1;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel2;
  // Model for custom_signIn_buton component.
  late CustomSignInButonModel customSignInButonModel1;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel3;
  // Model for custom_signIn_buton component.
  late CustomSignInButonModel customSignInButonModel2;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel4;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel5;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel6;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel7;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel8;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel9;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel10;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sizedBoxModel1 = createModel(context, () => SizedBoxModel());
    sizedBoxModel2 = createModel(context, () => SizedBoxModel());
    customSignInButonModel1 =
        createModel(context, () => CustomSignInButonModel());
    sizedBoxModel3 = createModel(context, () => SizedBoxModel());
    customSignInButonModel2 =
        createModel(context, () => CustomSignInButonModel());
    sizedBoxModel4 = createModel(context, () => SizedBoxModel());
    sizedBoxModel5 = createModel(context, () => SizedBoxModel());
    sizedBoxModel6 = createModel(context, () => SizedBoxModel());
    sizedBoxModel7 = createModel(context, () => SizedBoxModel());
    sizedBoxModel8 = createModel(context, () => SizedBoxModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
    sizedBoxModel9 = createModel(context, () => SizedBoxModel());
    sizedBoxModel10 = createModel(context, () => SizedBoxModel());
  }

  void dispose() {
    sizedBoxModel1.dispose();
    sizedBoxModel2.dispose();
    customSignInButonModel1.dispose();
    sizedBoxModel3.dispose();
    customSignInButonModel2.dispose();
    sizedBoxModel4.dispose();
    sizedBoxModel5.dispose();
    sizedBoxModel6.dispose();
    sizedBoxModel7.dispose();
    sizedBoxModel8.dispose();
    customButtonModel.dispose();
    sizedBoxModel9.dispose();
    sizedBoxModel10.dispose();
  }

  /// Additional helper methods are added here.

}
