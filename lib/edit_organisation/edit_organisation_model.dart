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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditOrganisationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for organisationName widget.
  TextEditingController? organisationNameController;
  String? Function(BuildContext, String?)? organisationNameControllerValidator;
  // State field(s) for selectIndustry widget.
  String? selectIndustryValue;
  // State field(s) for mainContact widget.
  TextEditingController? mainContactController;
  String? Function(BuildContext, String?)? mainContactControllerValidator;
  // State field(s) for organisationPhone widget.
  TextEditingController? organisationPhoneController;
  String? Function(BuildContext, String?)? organisationPhoneControllerValidator;
  // State field(s) for organisationEmail widget.
  TextEditingController? organisationEmailController;
  String? Function(BuildContext, String?)? organisationEmailControllerValidator;
  // State field(s) for organisationAddress widget.
  TextEditingController? organisationAddressController;
  String? Function(BuildContext, String?)?
      organisationAddressControllerValidator;
  // State field(s) for organisationPinCode widget.
  TextEditingController? organisationPinCodeController;
  String? Function(BuildContext, String?)?
      organisationPinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (locationAPI)] action in organisationPinCode widget.
  ApiCallResponse? apiResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    organisationNameController?.dispose();
    mainContactController?.dispose();
    organisationPhoneController?.dispose();
    organisationEmailController?.dispose();
    organisationAddressController?.dispose();
    organisationPinCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
