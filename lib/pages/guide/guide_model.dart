import '/flutter_flow/flutter_flow_util.dart';
import 'guide_widget.dart' show GuideWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GuideModel extends FlutterFlowModel<GuideWidget> {
  ///  Local state fields for this page.

  bool guidePage = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
