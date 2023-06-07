import '/auth/firebase_auth/auth_util.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'email_verification_model.dart';
export 'email_verification_model.dart';

class EmailVerificationWidget extends StatefulWidget {
  const EmailVerificationWidget({Key? key}) : super(key: key);

  @override
  _EmailVerificationWidgetState createState() =>
      _EmailVerificationWidgetState();
}

class _EmailVerificationWidgetState extends State<EmailVerificationWidget> {
  late EmailVerificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailVerificationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Lottie.asset(
                        'assets/lottie_animations/email_verification.json',
                        width: 250.0,
                        height: 250.0,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                  ),
                  Text(
                    'Confirm your email address',
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                  wrapWithModel(
                    model: _model.sizedBoxModel1,
                    updateCallback: () => setState(() {}),
                    child: SizedBoxWidget(
                      width: 5.0,
                      height: 10.0,
                    ),
                  ),
                  Text(
                    'We have send confirmation link to :  ',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  wrapWithModel(
                    model: _model.sizedBoxModel2,
                    updateCallback: () => setState(() {}),
                    child: SizedBoxWidget(
                      width: 5.0,
                      height: 10.0,
                    ),
                  ),
                  Text(
                    currentUserEmail,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  wrapWithModel(
                    model: _model.sizedBoxModel3,
                    updateCallback: () => setState(() {}),
                    child: SizedBoxWidget(
                      width: 5.0,
                      height: 10.0,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Text(
                      'Check your email and click on the confirmation link to continue.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.sizedBoxModel4,
                    updateCallback: () => setState(() {}),
                    child: SizedBoxWidget(
                      width: 5.0,
                      height: 30.0,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      if (currentUserEmailVerified) {
                        setState(() {
                          FFAppState().isEmailVerified = true;
                        });
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'home_page'),
                          ),
                        );
                      } else {
                        await Future.delayed(
                            const Duration(milliseconds: 1000));
                        if (currentUserEmailVerified) {
                          setState(() {
                            FFAppState().isEmailVerified = true;
                          });
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'home_page'),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Email not verified',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 2050),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }
                      }
                    },
                    text: 'Verified',
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xE8F01C43),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Nunito',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await authManager.sendEmailVerification();
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Email verification link sent!',
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                        duration: Duration(milliseconds: 1500),
                        backgroundColor: Color(0xFF57D206),
                      ),
                    );
                  },
                  text: 'Resend Verification Link',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xE8F01C43),
                    textStyle: FlutterFlowTheme.of(context).titleMedium,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
