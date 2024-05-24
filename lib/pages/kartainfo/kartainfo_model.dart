import '/flutter_flow/flutter_flow_util.dart';
import 'kartainfo_widget.dart' show KartainfoWidget;
import 'package:flutter/material.dart';

class KartainfoModel extends FlutterFlowModel<KartainfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
