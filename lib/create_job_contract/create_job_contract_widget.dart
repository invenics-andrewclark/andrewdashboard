import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_job_contract_model.dart';
export 'create_job_contract_model.dart';

class CreateJobContractWidget extends StatefulWidget {
  const CreateJobContractWidget({
    Key? key,
    this.jobTitle,
    this.workerFullName,
    this.workerGender,
    this.workerSkill,
    this.workerExperience,
    this.workerPhoto,
    this.organisationRef,
    this.workerRef,
    this.jobRef,
    this.orgRef,
  }) : super(key: key);

  final String? jobTitle;
  final String? workerFullName;
  final String? workerGender;
  final String? workerSkill;
  final String? workerExperience;
  final String? workerPhoto;
  final DocumentReference? organisationRef;
  final DocumentReference? workerRef;
  final DocumentReference? jobRef;
  final DocumentReference? orgRef;

  @override
  _CreateJobContractWidgetState createState() =>
      _CreateJobContractWidgetState();
}

class _CreateJobContractWidgetState extends State<CreateJobContractWidget>
    with TickerProviderStateMixin {
  late CreateJobContractModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => CreateJobContractModel());

    _model.contractSalaryController ??= TextEditingController();

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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 12),
                    child: InkWell(
                      onTap: () async {
                        context.pop();
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x2B000000),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.jobTitle!,
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          child: InkWell(
                            onTap: () async {
                              final _datePicked1Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2050),
                              );

                              if (_datePicked1Date != null) {
                                setState(() {
                                  _model.datePicked1 = DateTime(
                                    _datePicked1Date.year,
                                    _datePicked1Date.month,
                                    _datePicked1Date.day,
                                  );
                                });
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.44,
                              height: 50,
                              constraints: BoxConstraints(
                                maxWidth: 265,
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 5, 12, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                          'd/M/y',
                                          _model.datePicked1,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        'Start Date',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
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
                              animationsMap['containerOnPageLoadAnimation']!),
                        ),
                        InkWell(
                          onTap: () async {
                            final _datePicked2Date = await showDatePicker(
                              context: context,
                              initialDate: getCurrentTimestamp,
                              firstDate: getCurrentTimestamp,
                              lastDate: DateTime(2050),
                            );

                            if (_datePicked2Date != null) {
                              setState(() {
                                _model.datePicked2 = DateTime(
                                  _datePicked2Date.year,
                                  _datePicked2Date.month,
                                  _datePicked2Date.day,
                                );
                              });
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 46.7,
                            constraints: BoxConstraints(
                              maxWidth: 265,
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
                                  EdgeInsetsDirectional.fromSTEB(12, 5, 12, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                        'd/M/y',
                                        _model.datePicked2,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      'End Date',
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: FlutterFlowDropDown<String>(
                      options: [
                        FFLocalizations.of(context).getText(
                          '2r1wkcm5' /* Not Started */,
                        ),
                        FFLocalizations.of(context).getText(
                          'qxg086me' /* In Progress */,
                        ),
                        FFLocalizations.of(context).getText(
                          'f2i6osgi' /* Complete */,
                        )
                      ],
                      onChanged: (val) =>
                          setState(() => _model.salaryTypeValue = val),
                      width: double.infinity,
                      height: 60,
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                      hintText: FFLocalizations.of(context).getText(
                        'f5chwcfm' /* Select Salary Type */,
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
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: TextFormField(
                      controller: _model.contractSalaryController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'y1d4g04a' /* Salary Amount */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                      validator: _model.contractSalaryControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 570,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                child: FFButtonWidget(
                  onPressed: () async {
                    final employmentContractsCreateData =
                        createEmploymentContractsRecordData(
                      salary:
                          int.tryParse(_model.contractSalaryController.text),
                      modeOfSalary: _model.salaryTypeValue,
                      startDate: _model.datePicked1,
                      endDate: _model.datePicked2,
                      workerName: widget.workerFullName,
                      workerGender: widget.workerGender,
                      workerSkill: widget.workerSkill,
                      workerSkillExperience: widget.workerExperience,
                      workerImage: widget.workerPhoto,
                      workerReference: widget.workerRef,
                      contractSigned: true,
                      organisationReference: widget.organisationRef,
                      jobReference: widget.jobRef,
                    );
                    await EmploymentContractsRecord.createDoc(
                            widget.organisationRef!)
                        .set(employmentContractsCreateData);

                    context.pushNamed('jobDetails');
                  },
                  text: FFLocalizations.of(context).getText(
                    'xqbbwghx' /* Accept */,
                  ),
                  options: FFButtonOptions(
                    width: 270,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).subtitle2Family,
                          color: Colors.white,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).subtitle2Family),
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(50),
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
