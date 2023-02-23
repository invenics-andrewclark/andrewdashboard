import '../backend/backend.dart';
import '../components/completed_tasks_widget.dart';
import '../components/empty_notifications_widget.dart';
import '../components/empty_tasks_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'organisation_jobs_model.dart';
export 'organisation_jobs_model.dart';

class OrganisationJobsWidget extends StatefulWidget {
  const OrganisationJobsWidget({
    Key? key,
    this.organisationRef,
    this.organisationName,
    this.organisationLogo,
  }) : super(key: key);

  final DocumentReference? organisationRef;
  final String? organisationName;
  final String? organisationLogo;

  @override
  _OrganisationJobsWidgetState createState() => _OrganisationJobsWidgetState();
}

class _OrganisationJobsWidgetState extends State<OrganisationJobsWidget>
    with TickerProviderStateMixin {
  late OrganisationJobsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 30),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 30),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 30),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrganisationJobsModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.pushNamed(
            'createJob',
            queryParams: {
              'organisationRef': serializeParam(
                widget.organisationRef,
                ParamType.DocumentReference,
              ),
              'organisationName': serializeParam(
                widget.organisationName,
                ParamType.String,
              ),
            }.withoutNulls,
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
          color: FlutterFlowTheme.of(context).primaryBtnText,
          size: 36,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        automaticallyImplyLeading: false,
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          title: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 50,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 30,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'gu1u8be2' /* Back */,
                          ),
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily:
                                    FlutterFlowTheme.of(context).title1Family,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 16,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context).title1Family),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          centerTitle: true,
          expandedTitleScale: 1.0,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 16, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              widget.organisationLogo!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 4),
                            child: Text(
                              widget.organisationName!,
                              textAlign: TextAlign.start,
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title2Family,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .title2Family),
                                        lineHeight: 1.2,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          StreamBuilder<List<CaptainsRecord>>(
                            stream: queryCaptainsRecord(
                              queryBuilder: (captainsRecord) =>
                                  captainsRecord.where('organisation_id',
                                      isEqualTo: widget.organisationRef),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<CaptainsRecord>
                                  projectMembersCaptainsRecordList =
                                  snapshot.data!;
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    projectMembersCaptainsRecordList.length,
                                    (projectMembersIndex) {
                                  final projectMembersCaptainsRecord =
                                      projectMembersCaptainsRecordList[
                                          projectMembersIndex];
                                  return Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Container(
                                        width: 36,
                                        height: 36,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          projectMembersCaptainsRecord.photo!,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'bhb3t80d' /* View All Captains */,
                                ),
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                    LinearPercentIndicator(
                      percent: 0.5,
                      width: MediaQuery.of(context).size.width,
                      lineHeight: 12,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primaryColor,
                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                      barRadius: Radius.circular(0),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                'le6r4r08' /* Completed Tasks */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            )),
                          ),
                          Expanded(
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                'yb5x20jq' /* Number of Tasks */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 8, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(25),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 1,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context).lineColor,
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryColor
                                    : FlutterFlowTheme.of(context).lineColor,
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              count: _model.countControllerValue1 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue1 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 8, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(25),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 1,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context).lineColor,
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryColor
                                    : FlutterFlowTheme.of(context).lineColor,
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              count: _model.countControllerValue2 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue2 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle: FlutterFlowTheme.of(context).subtitle1,
                          indicatorColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'vowvn4hh' /* In Progress */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'yz6or5x7' /* Completed */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'jbprfbfw' /* Activity */,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 12, 0, 12),
                                child: StreamBuilder<List<JobsRecord>>(
                                  stream: queryJobsRecord(
                                    parent: widget.organisationRef,
                                    queryBuilder: (jobsRecord) =>
                                        jobsRecord.where('start_date',
                                            isLessThanOrEqualTo:
                                                getCurrentTimestamp),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<JobsRecord> listViewJobsRecordList =
                                        snapshot.data!;
                                    if (listViewJobsRecordList.isEmpty) {
                                      return Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          height: 300,
                                          child: EmptyTasksWidget(
                                            title: 'No In Progress Tasks',
                                            bodyText:
                                                'No current tasks are in progress, congrats! Seems like you have deseared a rest.',
                                          ),
                                        ),
                                      );
                                    }
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: listViewJobsRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewJobsRecord =
                                            listViewJobsRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              context.pushNamed(
                                                'jobDetails',
                                                queryParams: {
                                                  'jobRef': serializeParam(
                                                    listViewJobsRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'organisationRef':
                                                      serializeParam(
                                                    widget.organisationRef,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'jobTitle': serializeParam(
                                                    listViewJobsRecord.jobTitle,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 2,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 12, 12, 12),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Text(
                                                              listViewJobsRecord
                                                                  .jobTitle!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title3,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 32,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'wze8of29' /* In Progress */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 4),
                                                      child: Text(
                                                        listViewJobsRecord
                                                            .area!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8tbirkv0' /* Job Category */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            listViewJobsRecord
                                                                .jobCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation1']!),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 12, 0, 12),
                                child: StreamBuilder<List<JobsRecord>>(
                                  stream: queryJobsRecord(
                                    parent: widget.organisationRef,
                                    queryBuilder: (jobsRecord) =>
                                        jobsRecord.where('end_date',
                                            isLessThanOrEqualTo:
                                                getCurrentTimestamp),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<JobsRecord> listViewJobsRecordList =
                                        snapshot.data!;
                                    if (listViewJobsRecordList.isEmpty) {
                                      return Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          height: 300,
                                          child: CompletedTasksWidget(
                                            title: 'No Completed Tasks',
                                            bodyText:
                                                'You need to get to work, go and complete some tasks.',
                                          ),
                                        ),
                                      );
                                    }
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: listViewJobsRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewJobsRecord =
                                            listViewJobsRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 12),
                                          child: InkWell(
                                            onTap: () async {
                                              context.pushNamed('jobDetails');
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary30,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 12, 12, 12),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'odwmsknf' /* Job Title */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title3
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .title3Family,
                                                                    decoration:
                                                                        TextDecoration
                                                                            .lineThrough,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).title3Family),
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 32,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        0,
                                                                        12,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'z1qw4qso' /* Completed */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'laa28b9g' /* Location */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2Family,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText2Family),
                                                                ),
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 24,
                                                      thickness: 1,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xd0lhmlc' /* Completed on */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              't8fmqhmv' /* Date */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation3']!),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 16, 16, 16),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SelectionArea(
                                                child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qnsnjd9q' /* Current Time */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                            )),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: SelectionArea(
                                                  child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'xo50zn2h' /* Progress on Schdule */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    StreamBuilder<List<WorkersRecord>>(
                                      stream: queryWorkersRecord(
                                        queryBuilder: (workersRecord) =>
                                            workersRecord.where(
                                                'organisation_id',
                                                isEqualTo:
                                                    widget.organisationRef),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: Center(
                                              child: Container(
                                                height: 340,
                                                child: EmptyNotificationsWidget(
                                                  title: 'Loading...',
                                                  bodyText: ' ',
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<WorkersRecord>
                                            listViewWorkersRecordList =
                                            snapshot.data!;
                                        if (listViewWorkersRecordList.isEmpty) {
                                          return Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: EmptyNotificationsWidget(
                                                title: 'No Activity',
                                                bodyText:
                                                    'It seems you have no activity, create some projects and tasks to get started.',
                                              ),
                                            ),
                                          );
                                        }
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewWorkersRecordList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewWorkersRecord =
                                                listViewWorkersRecordList[
                                                    listViewIndex];
                                            return Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    12, 0),
                                                        child: Container(
                                                          width: 16,
                                                          height: 120,
                                                          child: Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 1),
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0, 0),
                                                                child:
                                                                    Container(
                                                                  width: 4,
                                                                  height: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(0),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0, 1),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                                  child:
                                                                      Container(
                                                                    width: 16,
                                                                    height: 16,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            12,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        listViewWorkersRecord
                                                                            .photo!,
                                                                    width: 40,
                                                                    height: 40,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          12,
                                                                          0,
                                                                          0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        listViewWorkersRecord
                                                                            .fullName!,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'kxs2aa11' /* Gender:  */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                                                              child: Text(
                                                                                listViewWorkersRecord.gender!,
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'fsncan3o' /* Primary Skill:  */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                                                              child: Text(
                                                                                listViewWorkersRecord.area!,
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '865c58kf' /* Experience Level:  */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                                                              child: Text(
                                                                                listViewWorkersRecord.state!,
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
