import '/auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateJobModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for jobTitle widget.
  TextEditingController? jobTitleController;
  String? Function(BuildContext, String?)? jobTitleControllerValidator;
  // State field(s) for industry widget.
  String? industryValue;
  // State field(s) for description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for statusGender widget.
  String? statusGenderValue;
  // State field(s) for openings widget.
  TextEditingController? openingsController;
  String? Function(BuildContext, String?)? openingsControllerValidator;
  // State field(s) for workingHours widget.
  TextEditingController? workingHoursController;
  String? Function(BuildContext, String?)? workingHoursControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for minAge widget.
  TextEditingController? minAgeController;
  String? Function(BuildContext, String?)? minAgeControllerValidator;
  // State field(s) for maxAge widget.
  TextEditingController? maxAgeController;
  String? Function(BuildContext, String?)? maxAgeControllerValidator;
  // State field(s) for salaryType widget.
  String? salaryTypeValue;
  // State field(s) for minSalary widget.
  TextEditingController? minSalaryController;
  String? Function(BuildContext, String?)? minSalaryControllerValidator;
  // State field(s) for maxSalary widget.
  TextEditingController? maxSalaryController;
  String? Function(BuildContext, String?)? maxSalaryControllerValidator;
  // State field(s) for primarySkill widget.
  String? primarySkillValue;
  // State field(s) for skillLevel widget.
  String? skillLevelValue;
  // State field(s) for jobQualification widget.
  String? jobQualificationValue;
  // State field(s) for pinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (locationAPI)] action in pinCode widget.
  ApiCallResponse? locationAPIResult;
  // State field(s) for RadioButton widget.
  String? radioButtonValue1;
  // State field(s) for RadioButton widget.
  String? radioButtonValue2;
  // State field(s) for RadioButton widget.
  String? radioButtonValue3;
  // State field(s) for RadioButton widget.
  String? radioButtonValue4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    jobTitleController?.dispose();
    descriptionController?.dispose();
    openingsController?.dispose();
    workingHoursController?.dispose();
    minAgeController?.dispose();
    maxAgeController?.dispose();
    minSalaryController?.dispose();
    maxSalaryController?.dispose();
    pinCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
