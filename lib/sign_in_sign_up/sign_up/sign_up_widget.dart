import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sign_in_sign_up/email_verification/email_verification_widget.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        setState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.textController1 ??= TextEditingController();
    _model.emailTextController ??= TextEditingController();
    _model.passwordTextController ??= TextEditingController();
    _model.confirmPasswordTextController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
            'Sign Up ',
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
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            child: Stack(
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.sizedBoxModel1,
                            updateCallback: () => setState(() {}),
                            child: SizedBoxWidget(
                              width: 5.0,
                              height: 30.0,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Create an account',
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                              wrapWithModel(
                                model: _model.sizedBoxModel2,
                                updateCallback: () => setState(() {}),
                                child: SizedBoxWidget(
                                  width: 5.0,
                                  height: 1.0,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.lock,
                                color: Color(0xFFC8E40C),
                                size: 25.0,
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.sizedBoxModel3,
                            updateCallback: () => setState(() {}),
                            child: SizedBoxWidget(
                              width: 5.0,
                              height: 40.0,
                            ),
                          ),
                          Text(
                            'Username',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          wrapWithModel(
                            model: _model.sizedBoxModel4,
                            updateCallback: () => setState(() {}),
                            child: SizedBoxWidget(
                              width: 5.0,
                              height: 10.0,
                            ),
                          ),
                          TextFormField(
                            controller: _model.textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Fun Dislplay name',
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
                            textAlign: TextAlign.start,
                            validator: _model.textController1Validator
                                .asValidator(context),
                          ),
                          wrapWithModel(
                            model: _model.sizedBoxModel5,
                            updateCallback: () => setState(() {}),
                            child: SizedBoxWidget(
                              width: 5.0,
                              height: 15.0,
                            ),
                          ),
                          Text(
                            'Email',
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          wrapWithModel(
                            model: _model.sizedBoxModel6,
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
                            model: _model.sizedBoxModel7,
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
                            model: _model.sizedBoxModel8,
                            updateCallback: () => setState(() {}),
                            child: SizedBoxWidget(
                              width: 5.0,
                              height: 10.0,
                            ),
                          ),
                          TextFormField(
                            controller: _model.passwordTextController,
                            obscureText: !_model.passwordVisibility1,
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
                                  () => _model.passwordVisibility1 =
                                      !_model.passwordVisibility1,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.passwordVisibility1
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
                            model: _model.sizedBoxModel9,
                            updateCallback: () => setState(() {}),
                            child: SizedBoxWidget(
                              width: 5.0,
                              height: 15.0,
                            ),
                          ),
                          Text(
                            'Confirm Password',
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          wrapWithModel(
                            model: _model.sizedBoxModel10,
                            updateCallback: () => setState(() {}),
                            child: SizedBoxWidget(
                              width: 5.0,
                              height: 10.0,
                            ),
                          ),
                          TextFormField(
                            controller: _model.confirmPasswordTextController,
                            autofocus: true,
                            obscureText: !_model.passwordVisibility2,
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
                                  () => _model.passwordVisibility2 =
                                      !_model.passwordVisibility2,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.passwordVisibility2
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFFF0364C),
                                  size: 22.0,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model
                                .confirmPasswordTextControllerValidator
                                .asValidator(context),
                          ),
                          wrapWithModel(
                            model: _model.sizedBoxModel11,
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
                                  value: _model.checkboxValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => _model.checkboxValue = newValue!);
                                  },
                                  activeColor: Color(0xFFF0364C),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.sizedBoxModel12,
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
                ),
                if ((isWeb
                        ? MediaQuery.of(context).viewInsets.bottom > 0
                        : _isKeyboardVisible) ==
                    false)
                  Align(
                    alignment: AlignmentDirectional(1.0, 1.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.passwordTextController.text !=
                              _model.confirmPasswordTextController.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Passwords don\'t match!',
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await authManager.createAccountWithEmail(
                            context,
                            _model.emailTextController.text,
                            _model.passwordTextController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          final usersUpdateData = createUsersRecordData(
                            displayName: _model.textController1.text,
                          );
                          await currentUserReference!.update(usersUpdateData);
                          await authManager.sendEmailVerification();
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmailVerificationWidget(),
                            ),
                          );
                        },
                        text: 'Continue',
                        options: FFButtonOptions(
                          width: 340.0,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xE8F01C43),
                          textStyle: FlutterFlowTheme.of(context).titleMedium,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
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
