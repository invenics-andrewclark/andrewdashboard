import '/components/modal_activity_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_trigger_model.dart';
export 'notification_trigger_model.dart';

class NotificationTriggerWidget extends StatefulWidget {
  const NotificationTriggerWidget({Key? key}) : super(key: key);

  @override
  _NotificationTriggerWidgetState createState() =>
      _NotificationTriggerWidgetState();
}

class _NotificationTriggerWidgetState extends State<NotificationTriggerWidget> {
  late NotificationTriggerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationTriggerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return badges.Badge(
      badgeContent: Text(
        FFLocalizations.of(context).getText(
          'eo3dnsoa' /* 1 */,
        ),
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
              color: Colors.white,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
            ),
      ),
      showBadge: true,
      shape: badges.BadgeShape.circle,
      badgeColor: FlutterFlowTheme.of(context).alternate,
      elevation: 4.0,
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
      position: badges.BadgePosition.topEnd(),
      animationType: badges.BadgeAnimationType.scale,
      toAnimate: true,
      child: InkWell(
        onTap: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            barrierColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: double.infinity,
                  child: ModalActivityWidget(),
                ),
              );
            },
          ).then((value) => setState(() {}));
        },
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Icon(
                Icons.notifications_none,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Icon(
                Icons.notifications,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
