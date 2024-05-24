import '/flutter_flow/flutter_flow_util.dart';
import 'wizard_widget.dart' show WizardWidget;
import 'package:flutter/material.dart';

class WizardModel extends FlutterFlowModel<WizardWidget> {
  ///  Local state fields for this page.

  String placeVariable = '📍 Plats: Ringvägen 25 ';

  String timeVariable = '⏰ Tid: 18.30 ';

  String dateVariable = '📅 17 augusti 2024';

  String tshirtVariable = '👕 Ta med: T-Shirt';

  String shoeVariable = '👟 Ta med: Löparskor';

  String waterVariable = '💧 Ta med: Vattenflaska';

  DateTime? oneDayBeforeVariable;

  DateTime? oneWeekBeforeVariable;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;
  // State field(s) for Switch widget.
  bool? switchValue5;
  // State field(s) for Switch widget.
  bool? switchValue6;
  // State field(s) for Switch widget.
  bool? switchValue7;
  // State field(s) for Switch widget.
  bool? switchValue8;
  // State field(s) for Switch widget.
  bool? switchValue9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
