import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sized_box_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sell_service_model.dart';
export 'sell_service_model.dart';

class SellServiceWidget extends StatefulWidget {
  const SellServiceWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<String>? categories;

  @override
  _SellServiceWidgetState createState() => _SellServiceWidgetState();
}

class _SellServiceWidgetState extends State<SellServiceWidget>
    with TickerProviderStateMixin {
  late SellServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SellServiceModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        setState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 45.0,
                          icon: FaIcon(
                            FontAwesomeIcons.angleLeft,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Icon(
                              Icons.auto_awesome,
                              color: Color(0xFFF6002E),
                              size: 25.0,
                            ),
                          ),
                          Text(
                            'Sell Service',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 18.0,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          toolbarHeight: 60.0,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.93,
            child: Stack(
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 90.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Title*',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              wrapWithModel(
                                model: _model.sizedBoxModel1,
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
                                  hintText: 'ItemName',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xDC8C8383),
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF1E212D),
                                ),
                                style: FlutterFlowTheme.of(context).bodyLarge,
                                keyboardType: TextInputType.name,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                              wrapWithModel(
                                model: _model.sizedBoxModel2,
                                updateCallback: () => setState(() {}),
                                child: SizedBoxWidget(
                                  width: 5.0,
                                  height: 15.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Category*',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
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
                              FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(null),
                                options: widget.categories!,
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue = val),
                                width: MediaQuery.of(context).size.width * 1.0,
                                height: 50.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Please select...',
                                searchHintText: 'Search for an item...',
                                fillColor: Color(0xFF1E212D),
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 12.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: true,
                              ),
                              wrapWithModel(
                                model: _model.sizedBoxModel4,
                                updateCallback: () => setState(() {}),
                                child: SizedBoxWidget(
                                  width: 5.0,
                                  height: 15.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                controller: _model.textController2,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText:
                                      'Describe the condition of the item and terms of buying\n\"Slightly used, almost new\",\n\"pickup on weekend only\"',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xDC8C8383),
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF1E212D),
                                ),
                                style: FlutterFlowTheme.of(context).bodyLarge,
                                maxLines: 5,
                                keyboardType: TextInputType.multiline,
                                validator: _model.textController2Validator
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
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price*',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              wrapWithModel(
                                model: _model.sizedBoxModel7,
                                updateCallback: () => setState(() {}),
                                child: SizedBoxWidget(
                                  width: 5.0,
                                  height: 10.0,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.45, 0.35),
                                child: TextFormField(
                                  controller: _model.textController3,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: '100',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xDC8C8383),
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF1E212D),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                  keyboardType: TextInputType.number,
                                  validator: _model.textController3Validator
                                      .asValidator(context),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.sizedBoxModel8,
                                updateCallback: () => setState(() {}),
                                child: SizedBoxWidget(
                                  width: 5.0,
                                  height: 15.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Photos',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {});
                                },
                                child: custom_widgets.AddandShowPhotos(
                                  width: double.infinity,
                                  height: 60.0,
                                  imageFileList: _model.imagesSelectedLocal,
                                ),
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
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF1E212D),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title:
                                                Text('Do you want to discard?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                Navigator.pop(context);
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'home_page'),
                                  ),
                                );
                              } else {
                                Navigator.pop(context);
                              }
                            },
                            text: 'Discard',
                            options: FFButtonOptions(
                              width: 130.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFFF6002E),
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            showLoadingIndicator: false,
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }

                              final postsCreateData = createPostsRecordData(
                                postTitle: _model.textController1.text,
                                postDescription: _model.textController2.text,
                                postUser: currentUserReference,
                                timePosted: getCurrentTimestamp,
                                price: double.tryParse(
                                    _model.textController3.text),
                              );
                              var postsRecordReference =
                                  PostsRecord.collection.doc();
                              await postsRecordReference.set(postsCreateData);
                              _model.post = PostsRecord.getDocumentFromData(
                                  postsCreateData, postsRecordReference);
                              _model.imagURLs =
                                  await actions.uploadImagesToFirebase(
                                _model.imagesSelectedLocal.toList(),
                                _model.post!.reference,
                                currentUserReference,
                              );

                              final postsUpdateData = {
                                'post_photos_url': functions
                                    .renameImageURLs(_model.imagURLs?.toList()),
                              };
                              await _model.post!.reference
                                  .update(postsUpdateData);

                              final usersUpdateData = {
                                'posts': FieldValue.arrayUnion(
                                    [_model.post!.reference]),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                              if (_model.imagURLs?.length ==
                                  _model.imagesSelectedLocal.length) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Images uploaded',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1500),
                                    backgroundColor: Color(0xFF57D206),
                                  ),
                                );
                                await Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'home_page'),
                                  ),
                                );
                              } else {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'home_page'),
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            text: 'Create Post',
                            options: FFButtonOptions(
                              width: 130.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF6002E),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['buttonOnPageLoadAnimation']!),
                        ],
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
