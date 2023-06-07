import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomTextFieldModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel1;
  // Model for sizedBox component.
  late SizedBoxModel sizedBoxModel2;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sizedBoxModel1 = createModel(context, () => SizedBoxModel());
    sizedBoxModel2 = createModel(context, () => SizedBoxModel());
  }

  void dispose() {
    sizedBoxModel1.dispose();
    sizedBoxModel2.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
