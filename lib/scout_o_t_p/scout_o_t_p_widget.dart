import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scout_o_t_p_model.dart';
export 'scout_o_t_p_model.dart';

class ScoutOTPWidget extends StatefulWidget {
  const ScoutOTPWidget({
    Key? key,
    this.captainFullName,
    this.captainMobilePhone,
    this.captainEmail,
    this.captainDOB,
    this.captainGender,
    this.captainPinCode,
    this.captainArea,
    this.captainState,
    this.captainDistrict,
    this.captainRecruitmentArea,
    this.captainReferralCode,
    this.captainAadhar,
    this.captainPan,
    this.captainIFSCCode,
    this.captainAccountNumber,
    this.captainAccountName,
    this.captainBankName,
    this.captainPhoto,
  }) : super(key: key);

  final String? captainFullName;
  final String? captainMobilePhone;
  final String? captainEmail;
  final DateTime? captainDOB;
  final String? captainGender;
  final String? captainPinCode;
  final String? captainArea;
  final String? captainState;
  final String? captainDistrict;
  final String? captainRecruitmentArea;
  final String? captainReferralCode;
  final String? captainAadhar;
  final String? captainPan;
  final String? captainIFSCCode;
  final String? captainAccountNumber;
  final String? captainAccountName;
  final String? captainBankName;
  final String? captainPhoto;

  @override
  _ScoutOTPWidgetState createState() => _ScoutOTPWidgetState();
}

class _ScoutOTPWidgetState extends State<ScoutOTPWidget> {
  late ScoutOTPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScoutOTPModel());

    _model.otpFieldController ??= TextEditingController();
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pop();
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ttk5uono' /* Back */,
                          ),
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily:
                                    FlutterFlowTheme.of(context).title1Family,
                                fontSize: 16,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context).title1Family),
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
      ),
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 570,
          ),
          decoration: BoxDecoration(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
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
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '816b4xp5' /* Back */,
                            ),
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily:
                                      FlutterFlowTheme.of(context).title1Family,
                                  fontSize: 16,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .title1Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'p8lqains' /* One Time Password */,
                    ),
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                          fontSize: 32,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title1Family),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 6, 24, 16),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'h7twpr35' /* We will send you a text messag... */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText2,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: _model.otpFieldController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintText: FFLocalizations.of(context).getText(
                          'tke0q0z1' /* Enter one time password... */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF57636C),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: _model.otpFieldControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        final smsCodeVal = _model.otpFieldController.text;
                        if (smsCodeVal == null || smsCodeVal.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Enter SMS verification code.'),
                            ),
                          );
                          return;
                        }
                        final phoneVerifiedUser = await verifySmsCode(
                          context: context,
                          smsCode: smsCodeVal,
                        );
                        if (phoneVerifiedUser == null) {
                          return;
                        }

                        final captainsCreateData = createCaptainsRecordData(
                          fullName: widget.captainFullName,
                          phone: widget.captainMobilePhone,
                          dob: widget.captainDOB,
                          gender: widget.captainGender,
                          photo: widget.captainPhoto,
                          email: widget.captainEmail,
                          createdDate: getCurrentTimestamp,
                          pinCode: widget.captainPinCode,
                          area: widget.captainArea,
                          state: widget.captainState,
                          district: widget.captainDistrict,
                          aadhar: widget.captainAadhar,
                          panNumber: widget.captainPan,
                          accountName: widget.captainAccountName,
                          accountNumber: widget.captainAccountNumber,
                          bankName: widget.captainBankName,
                          ifscCode: widget.captainIFSCCode,
                          referralCode: widget.captainReferralCode,
                          recruitmentArea: widget.captainRecruitmentArea,
                          tag: 'Scout',
                          userRef: currentUserReference,
                        );
                        await CaptainsRecord.collection
                            .doc()
                            .set(captainsCreateData);

                        context.pushNamedAuth('mainScout', mounted);
                      },
                      text: FFLocalizations.of(context).getText(
                        'hrkc3hkl' /* Submit */,
                      ),
                      options: FFButtonOptions(
                        width: 270,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
