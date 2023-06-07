import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/post_item/get_item/get_item_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_page_model.dart';
export 'post_page_model.dart';

class PostPageWidget extends StatefulWidget {
  const PostPageWidget({Key? key}) : super(key: key);

  @override
  _PostPageWidgetState createState() => _PostPageWidgetState();
}

class _PostPageWidgetState extends State<PostPageWidget> {
  late PostPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostPageModel());
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
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 55.0,
            icon: Icon(
              Icons.post_add_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Add Post',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 20.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Add_Post-bg2.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 70.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/wanted.png',
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'What do you want today?',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Nunito',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            48.0, 0.0, 48.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                'Want something specific? Post a request to buy items or hire services. Ask your neighbors.',
                                maxLines: 3,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                HapticFeedback.lightImpact();
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GetItemWidget(
                                      categories: List.generate(
                                          random_data.randomInteger(4, 6),
                                          (index) => random_data.randomString(
                                                0,
                                                0,
                                                true,
                                                false,
                                                false,
                                              )),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width: 254.0,
                                height: 62.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFF5484A),
                                      Color(0xFFFF7475)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(1.0, 0.0),
                                    end: AlignmentDirectional(-1.0, 0),
                                  ),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Item Wanted',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 254.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFF5484A),
                                    Color(0xFFFF7475)
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(1.0, 0.0),
                                  end: AlignmentDirectional(-1.0, 0),
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Service Wanted',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/sell2.png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'What are you selling today?',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 16.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                48.0, 0.0, 48.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: AutoSizeText(
                                    'Create a post to sell and earn today.',
                                    maxLines: 3,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 4.0, 0.0),
                                  child: Container(
                                    width: 254.0,
                                    height: 62.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFF5484A),
                                          Color(0xFFFF7475)
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(1.0, 0.0),
                                        end: AlignmentDirectional(-1.0, 0),
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Sell Item',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 20.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 254.0,
                                    height: 62.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFF5484A),
                                          Color(0xFFFF7475)
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(1.0, 0.0),
                                        end: AlignmentDirectional(-1.0, 0),
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Sell Service',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 20.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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
