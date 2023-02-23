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

class EditScoutProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for scoutFullName widget.
  TextEditingController? scoutFullNameController;
  String? Function(BuildContext, String?)? scoutFullNameControllerValidator;
  // State field(s) for gender widget.
  String? genderValue;
  // State field(s) for scoutMobilePhone widget.
  TextEditingController? scoutMobilePhoneController;
  String? Function(BuildContext, String?)? scoutMobilePhoneControllerValidator;
  // State field(s) for scoutEmail widget.
  TextEditingController? scoutEmailController;
  String? Function(BuildContext, String?)? scoutEmailControllerValidator;
  DateTime? datePicked;
  // State field(s) for pinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (locationAPI)] action in pinCode widget.
  ApiCallResponse? locationAPIResult;
  // State field(s) for recruitmentArea widget.
  TextEditingController? recruitmentAreaController;
  String? Function(BuildContext, String?)? recruitmentAreaControllerValidator;
  // State field(s) for scoutAadhar widget.
  TextEditingController? scoutAadharController;
  String? Function(BuildContext, String?)? scoutAadharControllerValidator;
  // State field(s) for scoutPanNumber widget.
  TextEditingController? scoutPanNumberController;
  String? Function(BuildContext, String?)? scoutPanNumberControllerValidator;
  // State field(s) for scoutIFSCCode widget.
  TextEditingController? scoutIFSCCodeController;
  String? Function(BuildContext, String?)? scoutIFSCCodeControllerValidator;
  // State field(s) for scoutAccountNumber widget.
  TextEditingController? scoutAccountNumberController;
  String? Function(BuildContext, String?)?
      scoutAccountNumberControllerValidator;
  // State field(s) for scoutAccountName widget.
  TextEditingController? scoutAccountNameController;
  String? Function(BuildContext, String?)? scoutAccountNameControllerValidator;
  // State field(s) for scoutBankName widget.
  TextEditingController? scoutBankNameController;
  String? Function(BuildContext, String?)? scoutBankNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    scoutFullNameController?.dispose();
    scoutMobilePhoneController?.dispose();
    scoutEmailController?.dispose();
    pinCodeController?.dispose();
    recruitmentAreaController?.dispose();
    scoutAadharController?.dispose();
    scoutPanNumberController?.dispose();
    scoutIFSCCodeController?.dispose();
    scoutAccountNumberController?.dispose();
    scoutAccountNameController?.dispose();
    scoutBankNameController?.dispose();
  }

  /// Additional helper methods are added here.

}
