import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'wt_tts2_model.dart';
export 'wt_tts2_model.dart';

class WtTts2Widget extends StatefulWidget {
  const WtTts2Widget({super.key});

  @override
  State<WtTts2Widget> createState() => _WtTts2WidgetState();
}

class _WtTts2WidgetState extends State<WtTts2Widget> {
  late WtTts2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WtTts2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Efter att ha tryckt på högtalaren så kommer all text du klickar på att läsas upp!',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: Colors.white,
                fontSize: 22.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
        ),
        const Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Icon(
                  Icons.spatial_audio_rounded,
                  color: Colors.white,
                  size: 64.0,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
