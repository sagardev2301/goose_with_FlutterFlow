import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sized_box_model.dart';
export 'sized_box_model.dart';

class SizedBoxWidget extends StatefulWidget {
  const SizedBoxWidget({
    Key? key,
    double? width,
    double? height,
  })  : this.width = width ?? 5.0,
        this.height = height ?? 5.0,
        super(key: key);

  final double width;
  final double height;

  @override
  _SizedBoxWidgetState createState() => _SizedBoxWidgetState();
}

class _SizedBoxWidgetState extends State<SizedBoxWidget> {
  late SizedBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SizedBoxModel());
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
      width: widget.width,
      height: widget.height,
      constraints: BoxConstraints(
        maxWidth: widget.width,
        maxHeight: widget.height,
      ),
      decoration: BoxDecoration(),
    );
  }
}
