import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddOrganisationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for teamSelect widget.
  String? teamSelectValue;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController1;
  String? Function(BuildContext, String?)? titleRoleController1Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController2;
  String? Function(BuildContext, String?)? titleRoleController2Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController3;
  String? Function(BuildContext, String?)? titleRoleController3Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController4;
  String? Function(BuildContext, String?)? titleRoleController4Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController5;
  String? Function(BuildContext, String?)? titleRoleController5Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController6;
  String? Function(BuildContext, String?)? titleRoleController6Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController7;
  String? Function(BuildContext, String?)? titleRoleController7Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController8;
  String? Function(BuildContext, String?)? titleRoleController8Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    userNameController?.dispose();
    titleRoleController1?.dispose();
    titleRoleController2?.dispose();
    titleRoleController3?.dispose();
    titleRoleController4?.dispose();
    titleRoleController5?.dispose();
    titleRoleController6?.dispose();
    titleRoleController7?.dispose();
    titleRoleController8?.dispose();
  }

  /// Additional helper methods are added here.

}
