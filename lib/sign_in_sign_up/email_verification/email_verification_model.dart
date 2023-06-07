import '/auth/firebase_auth/auth_util.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class EmailVerificationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel1;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel2;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel3;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sizedBoxModel1 = createModel(context, () => SizedBoxModel());
    sizedBoxModel2 = createModel(context, () => SizedBoxModel());
    sizedBoxModel3 = createModel(context, () => SizedBoxModel());
    sizedBoxModel4 = createModel(context, () => SizedBoxModel());
  }

  void dispose() {
    sizedBoxModel1.dispose();
    sizedBoxModel2.dispose();
    sizedBoxModel3.dispose();
    sizedBoxModel4.dispose();
  }

  /// Additional helper methods are added here.

}
