import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'wizard_model.dart';
export 'wizard_model.dart';

class WizardWidget extends StatefulWidget {
  const WizardWidget({super.key});

  @override
  State<WizardWidget> createState() => _WizardWidgetState();
}

class _WizardWidgetState extends State<WizardWidget>
    with TickerProviderStateMixin {
  late WizardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WizardModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              Text(
                'Påminnelser',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Stack(
                children: [
                  if (FFAppState().ttsModeActive)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: const Icon(
                        Icons.volume_up_rounded,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        FFAppState().update(() {
                          FFAppState().ttsModeActive = false;
                        });
                        await actions.speakText(
                          'Röstdiktering avslagen',
                        );
                      },
                    ),
                  if (!FFAppState().ttsModeActive)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: const Icon(
                        Icons.volume_off_rounded,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        FFAppState().update(() {
                          FFAppState().ttsModeActive = true;
                        });
                        await actions.speakText(
                          'Röstdiktering påslaget',
                        );
                      },
                    ),
                ],
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).secondary,
                        unselectedLabelColor: const Color(0xFF606A85),
                        labelStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
                                  fontFamily: 'Outfit',
                                  color: const Color(0xFF606A85),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: const Color(0xFF6F61EF),
                        padding: const EdgeInsets.all(8.0),
                        tabs: const [
                          Tab(
                            text: 'Steg 1',
                            icon: Icon(
                              Icons.place_outlined,
                            ),
                          ),
                          Tab(
                            text: 'Steg 2',
                            icon: FaIcon(
                              FontAwesomeIcons.tshirt,
                            ),
                          ),
                          Tab(
                            text: 'Steg 3 ',
                            icon: FaIcon(
                              FontAwesomeIcons.bell,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 15.0),
                                    child: Container(
                                      width: 322.0,
                                      height: 407.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 15.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  if (FFAppState()
                                                      .ttsModeActive)
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 60.0,
                                                      icon: const Icon(
                                                        Icons.volume_up_rounded,
                                                        color: Colors.white,
                                                        size: 30.0,
                                                      ),
                                                      onPressed: () async {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .ttsModeActive =
                                                              false;
                                                        });
                                                        await actions.speakText(
                                                          'Röstdiktering avslagen',
                                                        );
                                                      },
                                                    ),
                                                  if (!FFAppState()
                                                      .ttsModeActive)
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 60.0,
                                                      icon: Icon(
                                                        Icons
                                                            .volume_off_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 40.0,
                                                      ),
                                                      onPressed: () async {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .ttsModeActive =
                                                              true;
                                                        });
                                                        await actions.speakText(
                                                          'Välj det du vill bli påmind om gällande loppet',
                                                        );
                                                      },
                                                    ),
                                                ],
                                              ),
                                              Text(
                                                'Välj det du vill bli påmind om gällande loppet',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 24.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(14.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Icon(
                                                            Icons.location_pin,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 35.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Plats',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Switch.adaptive(
                                                      value: _model
                                                              .switchValue1 ??=
                                                          FFAppState()
                                                              .platsSwitch,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .switchValue1 =
                                                            newValue);
                                                        if (newValue) {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .platsSwitch =
                                                                true;
                                                          });
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .addToReminderList(
                                                                    _model
                                                                        .placeVariable);
                                                          });
                                                        } else {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .platsSwitch =
                                                                false;
                                                          });
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .removeFromReminderList(
                                                                    _model
                                                                        .placeVariable);
                                                          });
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(14.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(6.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .clock,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 30.0,
                                                          ),
                                                          Text(
                                                            'Tid',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 10.0)),
                                                      ),
                                                    ),
                                                    Switch.adaptive(
                                                      value: _model
                                                              .switchValue2 ??=
                                                          FFAppState()
                                                              .timeSwitch,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .switchValue2 =
                                                            newValue);
                                                        if (newValue) {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .timeSwitch =
                                                                true;
                                                          });
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .addToReminderList(
                                                                    _model
                                                                        .timeVariable);
                                                          });
                                                        } else {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .timeSwitch =
                                                                false;
                                                          });
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .removeFromReminderList(
                                                                    _model
                                                                        .timeVariable);
                                                          });
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(14.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .calendar_month_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 35.0,
                                                          ),
                                                          Text(
                                                            'Dag',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 5.0)),
                                                      ),
                                                    ),
                                                    Switch.adaptive(
                                                      value: _model
                                                              .switchValue3 ??=
                                                          FFAppState()
                                                              .dateSwitch,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .switchValue3 =
                                                            newValue);
                                                        if (newValue) {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .dateSwitch =
                                                                true;
                                                          });
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .addToReminderList(
                                                                    _model
                                                                        .dateVariable);
                                                          });
                                                        } else {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .dateSwitch =
                                                                false;
                                                          });
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .removeFromReminderList(
                                                                    _model
                                                                        .dateVariable);
                                                          });
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (FFAppState().Progress > 0.0)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 1.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed('Paminnnelser');
                                            },
                                            text: '',
                                            icon: const Icon(
                                              Icons.close_rounded,
                                              size: 55.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 105.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      if (FFAppState().Progress < 1.0)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                _model.tabBarController!
                                                    .animateTo(
                                                  min(
                                                      _model.tabBarController!
                                                              .length -
                                                          1,
                                                      _model.tabBarController!
                                                              .index +
                                                          1),
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.ease,
                                                );
                                              });
                                            },
                                            text: '',
                                            icon: FaIcon(
                                              FontAwesomeIcons
                                                  .longArrowAltRight,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 45.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 105.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 322.0,
                                    height: 407.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                if (FFAppState().ttsModeActive)
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 60.0,
                                                    icon: const Icon(
                                                      Icons.volume_up_rounded,
                                                      color: Colors.white,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .ttsModeActive =
                                                            false;
                                                      });
                                                      await actions.speakText(
                                                        'Röstdiktering avslagen',
                                                      );
                                                    },
                                                  ),
                                                if (!FFAppState().ttsModeActive)
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 60.0,
                                                    icon: Icon(
                                                      Icons.volume_off_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 40.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .ttsModeActive =
                                                            true;
                                                      });
                                                      await actions.speakText(
                                                        'Välj det du vill bli påmind om gällande loppet',
                                                      );
                                                    },
                                                  ),
                                              ],
                                            ),
                                            Text(
                                              'Välj det du vill bli påmind om gällande loppet',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(14.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .tshirt,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 35.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'T-Shirt',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .displaySmall
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 24.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 5.0)),
                                                  ),
                                                  Switch.adaptive(
                                                    value:
                                                        _model.switchValue4 ??=
                                                            FFAppState()
                                                                .tShirtSwitch,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.switchValue4 =
                                                              newValue);
                                                      if (newValue) {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .tShirtSwitch =
                                                              true;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .addToReminderList(
                                                                  _model
                                                                      .tshirtVariable);
                                                        });
                                                      } else {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .tShirtSwitch =
                                                              false;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .removeFromReminderList(
                                                                  _model
                                                                      .tshirtVariable);
                                                        });
                                                      }
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(14.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .shoePrints,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 30.0,
                                                        ),
                                                        Text(
                                                          'Skor',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                  Switch.adaptive(
                                                    value: _model
                                                            .switchValue5 ??=
                                                        FFAppState().shoeSwitch,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.switchValue5 =
                                                              newValue);
                                                      if (newValue) {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .shoeSwitch =
                                                              true;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .addToReminderList(
                                                                  _model
                                                                      .shoeVariable);
                                                        });
                                                      } else {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .shoeSwitch =
                                                              false;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .removeFromReminderList(
                                                                  _model
                                                                      .shoeVariable);
                                                        });
                                                      }
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(14.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons.battery_6_bar,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 35.0,
                                                        ),
                                                        Text(
                                                          'Vattenflaska',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 5.0)),
                                                    ),
                                                  ),
                                                  Switch.adaptive(
                                                    value:
                                                        _model.switchValue6 ??=
                                                            FFAppState()
                                                                .waterSwitch,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.switchValue6 =
                                                              newValue);
                                                      if (newValue) {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .waterSwitch =
                                                              true;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .addToReminderList(
                                                                  _model
                                                                      .waterVariable);
                                                        });
                                                      } else {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .waterSwitch =
                                                              false;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .removeFromReminderList(
                                                                  _model
                                                                      .waterVariable);
                                                        });
                                                      }
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (FFAppState().Progress > 0.0)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 1.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                _model.tabBarController!
                                                    .animateTo(
                                                  max(
                                                      0,
                                                      _model.tabBarController!
                                                              .index -
                                                          1),
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.ease,
                                                );
                                              });
                                            },
                                            text: '',
                                            icon: const FaIcon(
                                              FontAwesomeIcons.longArrowAltLeft,
                                              size: 45.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 105.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      if (FFAppState().Progress < 1.0)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                _model.tabBarController!
                                                    .animateTo(
                                                  min(
                                                      _model.tabBarController!
                                                              .length -
                                                          1,
                                                      _model.tabBarController!
                                                              .index +
                                                          1),
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.ease,
                                                );
                                              });
                                            },
                                            text: '',
                                            icon: FaIcon(
                                              FontAwesomeIcons
                                                  .longArrowAltRight,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 45.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 105.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsets.all(0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 322.0,
                                    height: 407.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 15.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                if (FFAppState().ttsModeActive)
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 60.0,
                                                    icon: const Icon(
                                                      Icons.volume_up_rounded,
                                                      color: Colors.white,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .ttsModeActive =
                                                            false;
                                                      });
                                                      await actions.speakText(
                                                        'Röstdiktering avslagen',
                                                      );
                                                    },
                                                  ),
                                                if (!FFAppState().ttsModeActive)
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 60.0,
                                                    icon: Icon(
                                                      Icons.volume_off_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 40.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .ttsModeActive =
                                                            true;
                                                      });
                                                      await actions.speakText(
                                                        'Välj när du vill bli påmind  om det',
                                                      );
                                                    },
                                                  ),
                                              ],
                                            ),
                                            Text(
                                              'Välj när du vill bli påmind  om det',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(14.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Icon(
                                                          Icons.today,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 35.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        '1 dag ',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .displaySmall
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 24.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Switch.adaptive(
                                                    value:
                                                        _model.switchValue7 ??=
                                                            FFAppState()
                                                                .oneDaySwitch,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.switchValue7 =
                                                              newValue);
                                                      if (newValue) {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .oneDaySwitch =
                                                              true;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .timeSetVar =
                                                              functions
                                                                  .oneDayBefore();
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                                  .timeVariableVisible =
                                                              true;
                                                        });
                                                      } else {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .oneDaySwitch =
                                                              false;
                                                        });
                                                      }
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(14.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .calendarWeek,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 30.0,
                                                        ),
                                                        Text(
                                                          '1 vecka',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                  Switch.adaptive(
                                                    value:
                                                        _model.switchValue8 ??=
                                                            FFAppState()
                                                                .oneWeekSwitch,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.switchValue8 =
                                                              newValue);
                                                      if (newValue) {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .oneWeekSwitch =
                                                              true;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .timeSetVar =
                                                              functions
                                                                  .oneWeekBefore();
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                                  .timeVariableVisible =
                                                              true;
                                                        });
                                                      } else {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .oneWeekSwitch =
                                                              false;
                                                        });
                                                      }
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(14.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .notifications_off,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 35.0,
                                                        ),
                                                        Text(
                                                          'Nej',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 5.0)),
                                                    ),
                                                  ),
                                                  Switch.adaptive(
                                                    value: _model
                                                            .switchValue9 ??=
                                                        FFAppState().noSwitch,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.switchValue9 =
                                                              newValue);
                                                      if (newValue) {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .noSwitch = true;
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .timeVariableVisible =
                                                              false;
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                                  .timeSetVar =
                                                              null;
                                                        });
                                                      } else {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .noSwitch = false;
                                                        });
                                                      }
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (FFAppState().Progress > 0.0)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 1.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                _model.tabBarController!
                                                    .animateTo(
                                                  max(
                                                      0,
                                                      _model.tabBarController!
                                                              .index -
                                                          1),
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.ease,
                                                );
                                              });
                                            },
                                            text: '',
                                            icon: const FaIcon(
                                              FontAwesomeIcons.longArrowAltLeft,
                                              size: 45.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 105.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      if (FFAppState().Progress > 0.0)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 1.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed('Paminnnelser');
                                            },
                                            text: '',
                                            icon: const Icon(
                                              Icons.close_rounded,
                                              size: 55.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 105.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
