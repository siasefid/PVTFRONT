import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/wt_guide_widget.dart';
import '/components/wt_karta_widget.dart';
import '/components/wt_paminnelser_widget.dart';
import '/components/wt_traningsvideos_widget.dart';
import '/components/wt_tts1_widget.dart';
import '/components/wt_tts2_widget.dart';

// Focus widget keys for this walkthrough
final columnU8poqnb8 = GlobalKey();
final column86e9yvqc = GlobalKey();
final columnPtj5x6gr = GlobalKey();
final columnUyk2ubt1 = GlobalKey();
final iconButtonP2f57kd1 = GlobalKey();
final text5408hr9l = GlobalKey();

/// dashboard-walkthrough
///
/// beskriver dashboardens knappar men främst tts-funktionen
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: columnU8poqnb8,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WtGuideWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: column86e9yvqc,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WtKartaWidget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: columnPtj5x6gr,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WtPaminnelserWidget(),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: columnUyk2ubt1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WtTraningsvideosWidget(),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: iconButtonP2f57kd1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.left,
            builder: (context, __) => const WtTts1Widget(),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: text5408hr9l,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WtTts2Widget(),
          ),
        ],
      ),
    ];
