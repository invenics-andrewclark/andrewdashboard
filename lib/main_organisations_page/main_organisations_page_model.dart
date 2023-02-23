import '../backend/backend.dart';
import '../components/drawer_nav_widget.dart';
import '../components/empty_organisations_widget.dart';
import '../components/notification_trigger_widget.dart';
import '../components/user_card_widget.dart';
import '../components/web_nav_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainOrganisationsPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebNav component.
  late WebNavModel webNavModel;
  // Model for userCard component.
  late UserCardModel userCardModel;
  // Model for notification_Trigger component.
  late NotificationTriggerModel notificationTriggerModel;
  // Model for drawerNav component.
  late DrawerNavModel drawerNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    userCardModel = createModel(context, () => UserCardModel());
    notificationTriggerModel =
        createModel(context, () => NotificationTriggerModel());
    drawerNavModel = createModel(context, () => DrawerNavModel());
  }

  void dispose() {
    webNavModel.dispose();
    userCardModel.dispose();
    notificationTriggerModel.dispose();
    drawerNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
