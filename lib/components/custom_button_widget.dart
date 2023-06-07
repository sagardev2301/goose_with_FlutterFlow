import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_button_model.dart';
export 'custom_button_model.dart';

class CustomButtonWidget extends StatefulWidget {
  const CustomButtonWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String? title;

  @override
  _CustomButtonWidgetState createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  late CustomButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: Color(0xE8F01C43),
        borderRadius: BorderRadius.circular(50.0),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        widget.title!,
        textAlign: TextAlign.center,
        style: FlutterFlowTheme.of(context).titleMedium,
      ),
    );
  }
}
