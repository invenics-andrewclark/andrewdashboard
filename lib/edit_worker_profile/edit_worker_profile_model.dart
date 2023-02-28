import '/auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditWorkerProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for workerFullName widget.
  TextEditingController? workerFullNameController;
  String? Function(BuildContext, String?)? workerFullNameControllerValidator;
  // State field(s) for gender widget.
  String? genderValue;
  // State field(s) for workerMobilephone widget.
  TextEditingController? workerMobilephoneController;
  String? Function(BuildContext, String?)? workerMobilephoneControllerValidator;
  // State field(s) for workerEmail widget.
  TextEditingController? workerEmailController;
  String? Function(BuildContext, String?)? workerEmailControllerValidator;
  DateTime? datePicked;
  // State field(s) for pinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (locationAPI)] action in pinCode widget.
  ApiCallResponse? locationAPIResult;
  // State field(s) for workerAadhar widget.
  TextEditingController? workerAadharController;
  String? Function(BuildContext, String?)? workerAadharControllerValidator;
  // State field(s) for workerPanNumber widget.
  TextEditingController? workerPanNumberController;
  String? Function(BuildContext, String?)? workerPanNumberControllerValidator;
  // State field(s) for workerIFSCCode widget.
  TextEditingController? workerIFSCCodeController;
  String? Function(BuildContext, String?)? workerIFSCCodeControllerValidator;
  // State field(s) for workerAccountNumber widget.
  TextEditingController? workerAccountNumberController;
  String? Function(BuildContext, String?)?
      workerAccountNumberControllerValidator;
  // State field(s) for workerAccountName widget.
  TextEditingController? workerAccountNameController;
  String? Function(BuildContext, String?)? workerAccountNameControllerValidator;
  // State field(s) for workerBankName widget.
  TextEditingController? workerBankNameController;
  String? Function(BuildContext, String?)? workerBankNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    workerFullNameController?.dispose();
    workerMobilephoneController?.dispose();
    workerEmailController?.dispose();
    pinCodeController?.dispose();
    workerAadharController?.dispose();
    workerPanNumberController?.dispose();
    workerIFSCCodeController?.dispose();
    workerAccountNumberController?.dispose();
    workerAccountNameController?.dispose();
    workerBankNameController?.dispose();
  }

  /// Additional helper methods are added here.

}
