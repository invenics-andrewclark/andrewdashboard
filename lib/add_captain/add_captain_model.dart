import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCaptainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for fullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  String? _fullNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '41umybiv' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for mobilePhone widget.
  TextEditingController? mobilePhoneController;
  String? Function(BuildContext, String?)? mobilePhoneControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'i5wagnfq' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for gender widget.
  String? genderValue;
  // State field(s) for pinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (locationAPI)] action in pinCode widget.
  ApiCallResponse? locationAPIResult;
  // State field(s) for recruitmentArea widget.
  TextEditingController? recruitmentAreaController;
  String? Function(BuildContext, String?)? recruitmentAreaControllerValidator;
  // State field(s) for referralCode widget.
  TextEditingController? referralCodeController;
  String? Function(BuildContext, String?)? referralCodeControllerValidator;
  // State field(s) for aadhar widget.
  TextEditingController? aadharController;
  String? Function(BuildContext, String?)? aadharControllerValidator;
  // State field(s) for panNumber widget.
  TextEditingController? panNumberController;
  String? Function(BuildContext, String?)? panNumberControllerValidator;
  // State field(s) for ifscCode widget.
  TextEditingController? ifscCodeController;
  String? Function(BuildContext, String?)? ifscCodeControllerValidator;
  // State field(s) for accountNumber widget.
  TextEditingController? accountNumberController;
  String? Function(BuildContext, String?)? accountNumberControllerValidator;
  // State field(s) for accountName widget.
  TextEditingController? accountNameController;
  String? Function(BuildContext, String?)? accountNameControllerValidator;
  // State field(s) for bankName widget.
  TextEditingController? bankNameController;
  String? Function(BuildContext, String?)? bankNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fullNameControllerValidator = _fullNameControllerValidator;
    emailAddressControllerValidator = _emailAddressControllerValidator;
  }

  void dispose() {
    fullNameController?.dispose();
    mobilePhoneController?.dispose();
    emailAddressController?.dispose();
    pinCodeController?.dispose();
    recruitmentAreaController?.dispose();
    referralCodeController?.dispose();
    aadharController?.dispose();
    panNumberController?.dispose();
    ifscCodeController?.dispose();
    accountNumberController?.dispose();
    accountNameController?.dispose();
    bankNameController?.dispose();
  }

  /// Additional helper methods are added here.

}
