import '/auth/firebase_auth/auth_util.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/sign_in_sign_up/email_verification/email_verification_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'sign_in_model.dart';
export 'sign_in_model.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  late SignInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInModel());

    _model.emailTextController ??= TextEditingController();
    _model.passwordTextController ??= TextEditingController();
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
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Sign In',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Lottie.network(
                  'https://assets6.lottiefiles.com/packages/lf20_mjlh3hcy.json',
                  width: 250.0,
                  height: 250.0,
                  fit: BoxFit.cover,
                  animate: true,
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel1,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 5.0,
                    height: 20.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.sizedBoxModel2,
                          updateCallback: () => setState(() {}),
                          child: SizedBoxWidget(
                            width: 5.0,
                            height: 10.0,
                          ),
                        ),
                        Text(
                          'Email',
                          style: FlutterFlowTheme.of(context).titleSmall,
                        ),
                        wrapWithModel(
                          model: _model.sizedBoxModel3,
                          updateCallback: () => setState(() {}),
                          child: SizedBoxWidget(
                            width: 5.0,
                            height: 10.0,
                          ),
                        ),
                        TextFormField(
                          controller: _model.emailTextController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'abc@email.com',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: Color(0xFF787070),
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF0364C),
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF57D206),
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
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.emailTextControllerValidator
                              .asValidator(context),
                        ),
                        wrapWithModel(
                          model: _model.sizedBoxModel4,
                          updateCallback: () => setState(() {}),
                          child: SizedBoxWidget(
                            width: 5.0,
                            height: 15.0,
                          ),
                        ),
                        Text(
                          'Password',
                          style: FlutterFlowTheme.of(context).titleSmall,
                        ),
                        wrapWithModel(
                          model: _model.sizedBoxModel5,
                          updateCallback: () => setState(() {}),
                          child: SizedBoxWidget(
                            width: 5.0,
                            height: 10.0,
                          ),
                        ),
                        TextFormField(
                          controller: _model.passwordTextController,
                          autofocus: true,
                          obscureText: !_model.passwordVisibility,
                          decoration: InputDecoration(
                            hintText: '*********',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: Color(0xFF787070),
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF0364C),
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF57D206),
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
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model.passwordVisibility =
                                    !_model.passwordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFFF0364C),
                                size: 22.0,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.passwordTextControllerValidator
                              .asValidator(context),
                        ),
                        wrapWithModel(
                          model: _model.sizedBoxModel6,
                          updateCallback: () => setState(() {}),
                          child: SizedBoxWidget(
                            width: 5.0,
                            height: 15.0,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).accent2,
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue ??= true,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.checkboxValue = newValue!);
                                },
                                activeColor: Color(0xFFF0364C),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.sizedBoxModel7,
                              updateCallback: () => setState(() {}),
                              child: SizedBoxWidget(
                                width: 5.0,
                                height: 5.0,
                              ),
                            ),
                            Text(
                              'Remember me',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.sizedBoxModel8,
                  updateCallback: () => setState(() {}),
                  child: SizedBoxWidget(
                    width: 5.0,
                    height: 35.0,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    final user = await authManager.signInWithEmail(
                      context,
                      _model.emailTextController.text,
                      _model.passwordTextController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    if (currentUserEmailVerified) {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'home_page'),
                        ),
                        (r) => false,
                      );
                    } else {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmailVerificationWidget(),
                        ),
                        (r) => false,
                      );
                    }
                  },
                  text: 'Sign In',
                  options: FFButtonOptions(
                    width: 320.0,
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
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
