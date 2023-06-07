import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_text_field_model.dart';
export 'custom_text_field_model.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.name,
    required this.labelText,
  }) : super(key: key);

  final String? name;
  final String? labelText;

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  late CustomTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomTextFieldModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        wrapWithModel(
          model: _model.sizedBoxModel1,
          updateCallback: () => setState(() {}),
          child: SizedBoxWidget(
            width: 1.0,
            height: 15.0,
          ),
        ),
        Text(
          widget.name!,
          style: FlutterFlowTheme.of(context).titleMedium,
        ),
        wrapWithModel(
          model: _model.sizedBoxModel2,
          updateCallback: () => setState(() {}),
          child: SizedBoxWidget(
            width: 1.0,
            height: 10.0,
          ),
        ),
        TextFormField(
          controller: _model.textController,
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            hintText: widget.labelText,
            hintStyle: FlutterFlowTheme.of(context).bodySmall,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium,
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ],
    );
  }
}
