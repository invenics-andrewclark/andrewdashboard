import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
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

class EditWorkerSkillsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Skills widget.
  String? skillsValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for TextFieldjobTitle widget.
  TextEditingController? textFieldjobTitleController;
  String? Function(BuildContext, String?)? textFieldjobTitleControllerValidator;
  // State field(s) for companyNmae widget.
  TextEditingController? companyNmaeController;
  String? Function(BuildContext, String?)? companyNmaeControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for experiencedSkillls widget.
  String? experiencedSkilllsValue;
  // State field(s) for otherskill widget.
  TextEditingController? otherskillController;
  String? Function(BuildContext, String?)? otherskillControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldjobTitleController?.dispose();
    companyNmaeController?.dispose();
    otherskillController?.dispose();
  }

  /// Additional helper methods are added here.

}
