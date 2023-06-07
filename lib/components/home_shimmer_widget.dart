import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_shimmer_model.dart';
export 'home_shimmer_model.dart';

class HomeShimmerWidget extends StatefulWidget {
  const HomeShimmerWidget({Key? key}) : super(key: key);

  @override
  _HomeShimmerWidgetState createState() => _HomeShimmerWidgetState();
}

class _HomeShimmerWidgetState extends State<HomeShimmerWidget>
    with TickerProviderStateMixin {
  late HomeShimmerModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(-100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeShimmerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 500.0,
        decoration: BoxDecoration(
          color: Color(0xFF0F0F0F),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipOval(
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF0F0F0F),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF787070), Color(0xDC4E4A4A)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
