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
import 'sign_in_options_model.dart';
export 'sign_in_options_model.dart';

class SignInOptionsWidget extends StatefulWidget {
  const SignInOptionsWidget({Key? key}) : super(key: key);

  @override
  _SignInOptionsWidgetState createState() => _SignInOptionsWidgetState();
}

class _SignInOptionsWidgetState extends State<SignInOptionsWidget> {
  late SignInOptionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInOptionsModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Lottie.asset(
                  'assets/lottie_animations/sign_in.json',
                  width: 240.0,
                  height: 240.0,
                  fit: BoxFit.scaleDown,
                  animate: true,
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel1,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 1.0,
                    height: 20.0,
                  ),
                ),
                Text(
                  'Let\'s get you in',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displaySmall,
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel2,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 1.0,
                    height: 40.0,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    final user = await authManager.signInWithGoogle(context);
                    if (user == null) {
                      return;
                    }
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'home_page'),
                      ),
                      (r) => false,
                    );
                  },
                  child: wrapWithModel(
                    model: _model.customSignInButonModel1,
                    updateCallback: () => setState(() {}),
                    child: CustomSignInButonWidget(
                      platform: 'Google',
                      imagesset:
                          'https://firebasestorage.googleapis.com/v0/b/goose-45eb8.appspot.com/o/Google.png?alt=media&token=2636979d-557e-4345-84c6-fb04740a3b7d',
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel3,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 1.0,
                    height: 10.0,
                  ),
                ),
                wrapWithModel(
                  model: _model.customSignInButonModel2,
                  updateCallback: () => setState(() {}),
                  child: CustomSignInButonWidget(
                    platform: 'Facebook',
                    imagesset:
                        'https://firebasestorage.googleapis.com/v0/b/goose-45eb8.appspot.com/o/Facebook.png?alt=media&token=00afcec7-9f49-40a8-8596-6eb6c720ae12',
                  ),
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel4,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 1.0,
                    height: 30.0,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    wrapWithModel(
                      model: _model.sizedBoxModel5,
                      updateCallback: () => setState(() {}),
                      child: SizedBoxWidget(
                        width: 1.0,
                        height: 10.0,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 1.5,
                      decoration: BoxDecoration(
                        color: Color(0xDC8C8383),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.sizedBoxModel6,
                      updateCallback: () => setState(() {}),
                      child: SizedBoxWidget(
                        width: 5.0,
                        height: 2.0,
                      ),
                    ),
                    Text(
                      'or',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelLarge,
                    ),
                    wrapWithModel(
                      model: _model.sizedBoxModel7,
                      updateCallback: () => setState(() {}),
                      child: SizedBoxWidget(
                        width: 5.0,
                        height: 2.0,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 1.5,
                      decoration: BoxDecoration(
                        color: Color(0xDC8C8383),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ],
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel8,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 1.0,
                    height: 30.0,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.scale,
                        alignment: Alignment.bottomCenter,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: SignInWidget(),
                      ),
                    );
                  },
                  child: wrapWithModel(
                    model: _model.customButtonModel,
                    updateCallback: () => setState(() {}),
                    child: CustomButtonWidget(
                      title: 'Sign in with email',
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel9,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 1.0,
                    height: 30.0,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ? ',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    wrapWithModel(
                      model: _model.sizedBoxModel10,
                      updateCallback: () => setState(() {}),
                      child: SizedBoxWidget(
                        width: 5.0,
                        height: 1.0,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.scale,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: SignUpWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: Color(0xE8F01C43),
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
