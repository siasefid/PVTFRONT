import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'wt_karta_model.dart';
export 'wt_karta_model.dart';

class WtKartaWidget extends StatefulWidget {
  const WtKartaWidget({super.key});

  @override
  State<WtKartaWidget> createState() => _WtKartaWidgetState();
}

class _WtKartaWidgetState extends State<WtKartaWidget> {
  late WtKartaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WtKartaModel());
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
          'Tryck på Karta för att se vart loppet går!',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: Colors.white,
                fontSize: 22.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  const Icon(
                    Icons.map_rounded,
                    color: Colors.white,
                    size: 64.0,
                  ),
                  Lottie.network(
                    'https://lottie.host/9c7a580a-7d1f-43c8-9370-82aa6a62df92/9JDsGoGUcv.json',
                    width: 128.0,
                    height: 128.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
