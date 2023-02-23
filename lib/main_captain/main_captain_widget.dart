import '../backend/backend.dart';
import '../components/drawer_nav_widget.dart';
import '../components/notification_trigger_widget.dart';
import '../components/user_card_widget.dart';
import '../components/web_nav_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_captain_model.dart';
export 'main_captain_model.dart';

class MainCaptainWidget extends StatefulWidget {
  const MainCaptainWidget({Key? key}) : super(key: key);

  @override
  _MainCaptainWidgetState createState() => _MainCaptainWidgetState();
}

class _MainCaptainWidgetState extends State<MainCaptainWidget> {
  late MainCaptainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainCaptainModel());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).size.width <= 764.0,
        child: FloatingActionButton(
          onPressed: () async {
            context.pushNamed(
              'addCaptain',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 250),
                ),
              },
            );
          },
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          elevation: 8,
          child: Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 16,
        child: wrapWithModel(
          model: _model.drawerNavModel,
          updateCallback: () => setState(() {}),
          child: DrawerNavWidget(),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.webNavModel,
                updateCallback: () => setState(() {}),
                child: WebNavWidget(
                  navBGOne: FlutterFlowTheme.of(context).secondaryBackground,
                  navColorOne: FlutterFlowTheme.of(context).secondaryText,
                  navBgTwo: FlutterFlowTheme.of(context).secondaryBackground,
                  navColorTwo: FlutterFlowTheme.of(context).secondaryText,
                  navBgThree: FlutterFlowTheme.of(context).primaryBackground,
                  navColorThree: FlutterFlowTheme.of(context).alternate,
                  navColorFour: FlutterFlowTheme.of(context).secondaryText,
                  navBGFour: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'o4agumg5' /* My Captains */,
                                  ),
                                  style: FlutterFlowTheme.of(context).title2,
                                ),
                              wrapWithModel(
                                model: _model.notificationTriggerModel,
                                updateCallback: () => setState(() {}),
                                child: NotificationTriggerWidget(),
                              ),
                            ],
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 12, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      scaffoldKey.currentState!.openDrawer();
                                    },
                                    child: wrapWithModel(
                                      model: _model.userCardModel,
                                      updateCallback: () => setState(() {}),
                                      child: UserCardWidget(),
                                    ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'h4vrw93q' /* My Team */,
                                  ),
                                  style: FlutterFlowTheme.of(context).title2,
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _model.textController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      '0st3yqow' /* Search members... */,
                                    ),
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 44,
                                  icon: Icon(
                                    Icons.search_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'hw94eld1' /* Find Members */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: StreamBuilder<List<CaptainsRecord>>(
                        stream: queryCaptainsRecord(
                          queryBuilder: (captainsRecord) =>
                              captainsRecord.where('tag', isEqualTo: 'Captain'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<CaptainsRecord> listViewCaptainsRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewCaptainsRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewCaptainsRecord =
                                  listViewCaptainsRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 8),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'captainWorkers',
                                      queryParams: {
                                        'captainUserRef': serializeParam(
                                          listViewCaptainsRecord.userRef,
                                          ParamType.DocumentReference,
                                        ),
                                        'captainFullName': serializeParam(
                                          listViewCaptainsRecord.fullName,
                                          ParamType.String,
                                        ),
                                        'captainArea': serializeParam(
                                          listViewCaptainsRecord.area,
                                          ParamType.String,
                                        ),
                                        'captainPhoto': serializeParam(
                                          listViewCaptainsRecord.photo,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: 400,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x32000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 8, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(26),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  listViewCaptainsRecord.photo!,
                                              width: 36,
                                              height: 36,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  listViewCaptainsRecord
                                                      .fullName!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Text(
                                                    listViewCaptainsRecord
                                                        .phone!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
