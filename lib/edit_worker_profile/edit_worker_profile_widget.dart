import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/change_photo_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_worker_profile_model.dart';
export 'edit_worker_profile_model.dart';

class EditWorkerProfileWidget extends StatefulWidget {
  const EditWorkerProfileWidget({
    Key? key,
    this.workerUserRef,
  }) : super(key: key);

  final DocumentReference? workerUserRef;

  @override
  _EditWorkerProfileWidgetState createState() =>
      _EditWorkerProfileWidgetState();
}

class _EditWorkerProfileWidgetState extends State<EditWorkerProfileWidget>
    with TickerProviderStateMixin {
  late EditWorkerProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.9,
          end: 1,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.9,
          end: 1,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.9,
          end: 1,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.9,
          end: 1,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditWorkerProfileModel());

    _model.workerFullNameController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.workerMobilephoneController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.userRole, ''));
    _model.workerEmailController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.userRole, ''));

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'ny4zsio0' /* Edit Profile */,
          ),
          style: FlutterFlowTheme.of(context).subtitle2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 570,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: StreamBuilder<List<WorkersRecord>>(
              stream: queryWorkersRecord(
                queryBuilder: (workersRecord) => workersRecord.where('user_ref',
                    isEqualTo: widget.workerUserRef),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<WorkersRecord> columnWorkersRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnWorkersRecord = columnWorkersRecordList.isNotEmpty
                    ? columnWorkersRecordList.first
                    : null;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).lineColor,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 90,
                                    height: 90,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl: currentUserPhoto,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  barrierColor:
                                      FlutterFlowTheme.of(context).overlay,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height: 370,
                                        child: ChangePhotoWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'pvr351jx' /* Change Photo */,
                              ),
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                elevation: 1,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ujzl1vea' /* Personal Details */,
                                  ),
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: AuthUserStreamWidget(
                          builder: (context) => TextFormField(
                            controller: _model.workerFullNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'xu9q52o2' /* Name */,
                              ),
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText2,
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            maxLines: null,
                            validator: _model.workerFullNameControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: FlutterFlowDropDown<String>(
                          options: [
                            FFLocalizations.of(context).getText(
                              'x8rpemn9' /* Male */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ng8tnc2b' /* Female */,
                            ),
                            FFLocalizations.of(context).getText(
                              'rq38je72' /* Other */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.genderValue = val),
                          width: double.infinity,
                          height: 60,
                          textStyle: FlutterFlowTheme.of(context).bodyText1,
                          hintText: FFLocalizations.of(context).getText(
                            'k1pg88tm' /* Select Gender */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 15,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2,
                          borderColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          borderWidth: 2,
                          borderRadius: 8,
                          margin: EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: AuthUserStreamWidget(
                          builder: (context) => TextFormField(
                            controller: _model.workerMobilephoneController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'gxj790ju' /* Mobile */,
                              ),
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText2,
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 20, 24),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            validator: _model
                                .workerMobilephoneControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: AuthUserStreamWidget(
                          builder: (context) => TextFormField(
                            controller: _model.workerEmailController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'izkemjuf' /* Email */,
                              ),
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText2,
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 20, 24),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            validator: _model.workerEmailControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: InkWell(
                          onTap: () async {
                            final _datePickedDate = await showDatePicker(
                              context: context,
                              initialDate: getCurrentTimestamp,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2050),
                            );

                            if (_datePickedDate != null) {
                              setState(() {
                                _model.datePicked = DateTime(
                                  _datePickedDate.year,
                                  _datePickedDate.month,
                                  _datePickedDate.day,
                                );
                              });
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 60,
                            constraints: BoxConstraints(
                              maxWidth: 540,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                        'd/M/y',
                                        _model.datePicked,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      'Date of Birth',
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Icon(
                                    Icons.date_range_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.pinCodeController ??=
                              TextEditingController(
                            text: columnWorkersRecord!.pinCode,
                          ),
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.pinCodeController',
                            Duration(milliseconds: 2000),
                            () async {
                              _model.locationAPIResult =
                                  await LocationAPICall.call(
                                pinCode: _model.pinCodeController.text,
                              );

                              setState(() {});
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'xmhg32te' /* Pin Code */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.start,
                          validator: _model.pinCodeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 60,
                          constraints: BoxConstraints(
                            maxWidth: 540,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (_model.pinCodeController.text == null ||
                                    _model.pinCodeController.text == '')
                                  Text(
                                    columnWorkersRecord!.area!,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                if (_model.pinCodeController.text != null &&
                                    _model.pinCodeController.text != '')
                                  Text(
                                    LocationAPICall.area(
                                      (_model.locationAPIResult?.jsonBody ??
                                          ''),
                                    ).toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 60,
                          constraints: BoxConstraints(
                            maxWidth: 540,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (_model.pinCodeController.text == null ||
                                    _model.pinCodeController.text == '')
                                  Text(
                                    columnWorkersRecord!.state!,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                if (_model.pinCodeController.text != null &&
                                    _model.pinCodeController.text != '')
                                  Text(
                                    LocationAPICall.state(
                                      (_model.locationAPIResult?.jsonBody ??
                                          ''),
                                    ).toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation3']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 60,
                          constraints: BoxConstraints(
                            maxWidth: 540,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (_model.pinCodeController.text == null ||
                                    _model.pinCodeController.text == '')
                                  Text(
                                    columnWorkersRecord!.district!,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                if (_model.pinCodeController.text != null &&
                                    _model.pinCodeController.text != '')
                                  Text(
                                    LocationAPICall.district(
                                      (_model.locationAPIResult?.jsonBody ??
                                          ''),
                                    ).toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation4']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'snrit6u0' /* Bank Details */,
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.workerAadharController ??=
                              TextEditingController(
                            text: columnWorkersRecord!.aadhar,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'joj939xs' /* Aadhar */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.start,
                          validator: _model.workerAadharControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.workerPanNumberController ??=
                              TextEditingController(
                            text: columnWorkersRecord!.panNumber,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'em1u0gak' /* PAN Number */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.start,
                          validator: _model.workerPanNumberControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.workerIFSCCodeController ??=
                              TextEditingController(
                            text: columnWorkersRecord!.ifscCode,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '83q4vu0h' /* IFSC Code */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.start,
                          validator: _model.workerIFSCCodeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.workerAccountNumberController ??=
                              TextEditingController(
                            text: columnWorkersRecord!.accountNumber,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '69lm6pjq' /* Account Number */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.start,
                          validator: _model
                              .workerAccountNumberControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.workerAccountNameController ??=
                              TextEditingController(
                            text: columnWorkersRecord!.accountName,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '2yaykqfn' /* Account Name */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.start,
                          validator: _model.workerAccountNameControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.workerBankNameController ??=
                              TextEditingController(
                            text: columnWorkersRecord!.bankName,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'v5xwmrn8' /* Bank Name */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          textAlign: TextAlign.start,
                          validator: _model.workerBankNameControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final workersUpdateData = createWorkersRecordData(
                                fullName: _model.workerFullNameController.text,
                                phone: _model.workerMobilephoneController.text,
                                dob: _model.datePicked,
                                gender: _model.genderValue,
                                email: _model.workerEmailController.text,
                                pinCode: _model.pinCodeController.text,
                                area: _model.pinCodeController.text == null ||
                                        _model.pinCodeController.text == ''
                                    ? columnWorkersRecord!.area
                                    : LocationAPICall.area(
                                        (_model.locationAPIResult?.jsonBody ??
                                            ''),
                                      ).toString(),
                                state: _model.pinCodeController.text == null ||
                                        _model.pinCodeController.text == ''
                                    ? columnWorkersRecord!.state
                                    : LocationAPICall.state(
                                        (_model.locationAPIResult?.jsonBody ??
                                            ''),
                                      ).toString(),
                                district: _model.pinCodeController.text ==
                                            null ||
                                        _model.pinCodeController.text == ''
                                    ? columnWorkersRecord!.district
                                    : LocationAPICall.district(
                                        (_model.locationAPIResult?.jsonBody ??
                                            ''),
                                      ).toString(),
                                aadhar: _model.workerAadharController.text,
                                panNumber:
                                    _model.workerPanNumberController.text,
                                accountName:
                                    _model.workerAccountNameController.text,
                                accountNumber:
                                    _model.workerAccountNumberController.text,
                                ifscCode: _model.workerIFSCCodeController.text,
                                bankName: _model.workerBankNameController.text,
                              );
                              await columnWorkersRecord!.reference
                                  .update(workersUpdateData);

                              context.pushNamed(
                                'workerProfile',
                                queryParams: {
                                  'workerUserRef': serializeParam(
                                    widget.workerUserRef,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'l5mj8vvp' /* Save Changes */,
                            ),
                            options: FFButtonOptions(
                              width: 200,
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: Colors.white,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                              elevation: 2,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
