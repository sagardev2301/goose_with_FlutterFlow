import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cutsom_page_view_model.dart';
export 'cutsom_page_view_model.dart';

class CutsomPageViewWidget extends StatefulWidget {
  const CutsomPageViewWidget({
    Key? key,
    this.images,
  }) : super(key: key);

  final List<String>? images;

  @override
  _CutsomPageViewWidgetState createState() => _CutsomPageViewWidgetState();
}

class _CutsomPageViewWidgetState extends State<CutsomPageViewWidget> {
  late CutsomPageViewModel _model;

  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CutsomPageViewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final postImages = widget.images?.toList() ?? [];
        return Container(
          width: 400.0,
          height: 400.0,
          child: Stack(
            children: [
              PageView.builder(
                controller: _model.pageViewController ??=
                    PageController(initialPage: min(0, postImages.length - 1)),
                scrollDirection: Axis.horizontal,
                itemCount: postImages.length,
                itemBuilder: (context, postImagesIndex) {
                  final postImagesItem = postImages[postImagesIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: CachedNetworkImage(
                        imageUrl: postImagesItem == null || postImagesItem == ''
                            ? random_data.randomImageUrl(
                                0,
                                0,
                              )
                            : postImagesItem,
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: smooth_page_indicator.SmoothPageIndicator(
                    controller: _model.pageViewController ??= PageController(
                        initialPage: min(0, postImages.length - 1)),
                    count: postImages.length,
                    axisDirection: Axis.horizontal,
                    onDotClicked: (i) async {
                      await _model.pageViewController!.animateToPage(
                        i,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    effect: smooth_page_indicator.ExpandingDotsEffect(
                      expansionFactor: 4.0,
                      spacing: 4.0,
                      radius: 16.0,
                      dotWidth: 8.0,
                      dotHeight: 8.0,
                      dotColor: Color(0xFF4D2424),
                      activeDotColor: FlutterFlowTheme.of(context).primary,
                      paintStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
