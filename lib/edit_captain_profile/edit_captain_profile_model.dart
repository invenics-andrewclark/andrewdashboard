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

class EditCaptainProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for captainFullName widget.
  TextEditingController? captainFullNameController;
  String? Function(BuildContext, String?)? captainFullNameControllerValidator;
  // State field(s) for captainGender widget.
  String? captainGenderValue;
  // State field(s) for captainMobilePhone widget.
  TextEditingController? captainMobilePhoneController;
  String? Function(BuildContext, String?)?
      captainMobilePhoneControllerValidator;
  // State field(s) for captainEmail widget.
  TextEditingController? captainEmailController;
  String? Function(BuildContext, String?)? captainEmailControllerValidator;
  DateTime? datePicked;
  // State field(s) for pinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (locationAPI)] action in pinCode widget.
  ApiCallResponse? locationAPIResult;
  // State field(s) for captainRecruitmentArea widget.
  TextEditingController? captainRecruitmentAreaController;
  String? Function(BuildContext, String?)?
      captainRecruitmentAreaControllerValidator;
  // State field(s) for captainAadhar widget.
  TextEditingController? captainAadharController;
  String? Function(BuildContext, String?)? captainAadharControllerValidator;
  // State field(s) for captainPanNumber widget.
  TextEditingController? captainPanNumberController;
  String? Function(BuildContext, String?)? captainPanNumberControllerValidator;
  // State field(s) for captainIFSCCode widget.
  TextEditingController? captainIFSCCodeController;
  String? Function(BuildContext, String?)? captainIFSCCodeControllerValidator;
  // State field(s) for captainAccountNumber widget.
  TextEditingController? captainAccountNumberController;
  String? Function(BuildContext, String?)?
      captainAccountNumberControllerValidator;
  // State field(s) for captainAccountName widget.
  TextEditingController? captainAccountNameController;
  String? Function(BuildContext, String?)?
      captainAccountNameControllerValidator;
  // State field(s) for captainBankName widget.
  TextEditingController? captainBankNameController;
  String? Function(BuildContext, String?)? captainBankNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    captainFullNameController?.dispose();
    captainMobilePhoneController?.dispose();
    captainEmailController?.dispose();
    pinCodeController?.dispose();
    captainRecruitmentAreaController?.dispose();
    captainAadharController?.dispose();
    captainPanNumberController?.dispose();
    captainIFSCCodeController?.dispose();
    captainAccountNumberController?.dispose();
    captainAccountNameController?.dispose();
    captainBankNameController?.dispose();
  }

  /// Additional helper methods are added here.

}
