import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_sign_in_buton_model.dart';
export 'custom_sign_in_buton_model.dart';

class CustomSignInButonWidget extends StatefulWidget {
  const CustomSignInButonWidget({
    Key? key,
    required this.platform,
    required this.imagesset,
  }) : super(key: key);

  final String? platform;
  final String? imagesset;

  @override
  _CustomSignInButonWidgetState createState() =>
      _CustomSignInButonWidgetState();
}

class _CustomSignInButonWidgetState extends State<CustomSignInButonWidget> {
  late CustomSignInButonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomSignInButonModel());
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
      width: 100.0,
      height: 60.0,
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * 1.0,
        minHeight: 50.0,
        maxHeight: 60.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xDC4E4A4A),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            widget.imagesset!,
            width: 35.0,
            height: 35.0,
            fit: BoxFit.cover,
          ),
          Container(
            width: 100.0,
            height: 100.0,
            constraints: BoxConstraints(
              maxWidth: 15.0,
            ),
            decoration: BoxDecoration(),
          ),
          Text(
            'Continue with ',
            style: FlutterFlowTheme.of(context).titleMedium,
          ),
          Text(
            widget.platform!,
            style: FlutterFlowTheme.of(context).titleMedium,
          ),
        ],
      ),
    );
  }
}
