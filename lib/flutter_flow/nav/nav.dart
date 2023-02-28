import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  DashboardAndrewFirebaseUser? initialUser;
  DashboardAndrewFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(DashboardAndrewFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'forgotPassword',
              path: 'forgotPassword',
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'mainActivityTracker',
              path: 'mainActivityTracker',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'mainActivityTracker')
                  : MainActivityTrackerWidget(),
            ),
            FFRoute(
              name: 'captainWorkers',
              path: 'captainWorkers',
              requireAuth: true,
              builder: (context, params) => CaptainWorkersWidget(
                captainUserRef: params.getParam('captainUserRef',
                    ParamType.DocumentReference, false, ['users']),
                captainFullName:
                    params.getParam('captainFullName', ParamType.String),
                captainArea: params.getParam('captainArea', ParamType.String),
                captainPhoto: params.getParam('captainPhoto', ParamType.String),
                captainRef: params.getParam('captainRef',
                    ParamType.DocumentReference, false, ['Captains']),
              ),
            ),
            FFRoute(
              name: 'createJob',
              path: 'createJob',
              requireAuth: true,
              builder: (context, params) => CreateJobWidget(
                organisationRef: params.getParam('organisationRef',
                    ParamType.DocumentReference, false, ['Organisations']),
                organisationName:
                    params.getParam('organisationName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'jobDetails',
              path: 'jobDetails',
              requireAuth: true,
              builder: (context, params) => JobDetailsWidget(
                jobRef: params.getParam('jobRef', ParamType.DocumentReference,
                    false, ['Organisations', 'Jobs']),
                organisationRef: params.getParam('organisationRef',
                    ParamType.DocumentReference, false, ['Organisations']),
                jobTitle: params.getParam('jobTitle', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'captainOTP',
              path: 'captainOTP',
              builder: (context, params) => CaptainOTPWidget(
                captainFullName:
                    params.getParam('captainFullName', ParamType.String),
                captainMobilePhone:
                    params.getParam('captainMobilePhone', ParamType.String),
                captainEmail: params.getParam('captainEmail', ParamType.String),
                captainDOB: params.getParam('captainDOB', ParamType.DateTime),
                captainGender:
                    params.getParam('captainGender', ParamType.String),
                captainPinCode:
                    params.getParam('captainPinCode', ParamType.String),
                captainArea: params.getParam('captainArea', ParamType.String),
                captainState: params.getParam('captainState', ParamType.String),
                captainDistrict:
                    params.getParam('captainDistrict', ParamType.String),
                captainRecruitmentArea:
                    params.getParam('captainRecruitmentArea', ParamType.String),
                captainReferralCode:
                    params.getParam('captainReferralCode', ParamType.String),
                captainAadhar:
                    params.getParam('captainAadhar', ParamType.String),
                captainPan: params.getParam('captainPan', ParamType.String),
                captainIFSCCode:
                    params.getParam('captainIFSCCode', ParamType.String),
                captainAccountNumber:
                    params.getParam('captainAccountNumber', ParamType.String),
                captainAccountName:
                    params.getParam('captainAccountName', ParamType.String),
                captainBankName:
                    params.getParam('captainBankName', ParamType.String),
                captainPhoto: params.getParam('captainPhoto', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'myProfile',
              path: 'myProfile',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'myProfile')
                  : MyProfileWidget(),
            ),
            FFRoute(
              name: 'addCaptain',
              path: 'addCaptain',
              builder: (context, params) => AddCaptainWidget(),
            ),
            FFRoute(
              name: 'mainCaptain',
              path: 'mainCaptain',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'mainCaptain')
                  : MainCaptainWidget(),
            ),
            FFRoute(
              name: 'mainScout',
              path: 'mainScout',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'mainScout')
                  : MainScoutWidget(),
            ),
            FFRoute(
              name: 'captainProfile',
              path: 'captainProfile',
              requireAuth: true,
              builder: (context, params) => CaptainProfileWidget(
                captainUserRef: params.getParam('captainUserRef',
                    ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'mainOrganisationsPage',
              path: 'mainOrganisationsPage',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'mainOrganisationsPage')
                  : MainOrganisationsPageWidget(),
            ),
            FFRoute(
              name: 'mainWorker',
              path: 'mainWorker',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'mainWorker')
                  : MainWorkerWidget(),
            ),
            FFRoute(
              name: 'scoutWorkers',
              path: 'scoutWorkers',
              requireAuth: true,
              builder: (context, params) => ScoutWorkersWidget(
                scoutUserRef: params.getParam('scoutUserRef',
                    ParamType.DocumentReference, false, ['users']),
                scoutFullName:
                    params.getParam('scoutFullName', ParamType.String),
                scoutArea: params.getParam('scoutArea', ParamType.String),
                scoutPhoto: params.getParam('scoutPhoto', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'organisationJobs',
              path: 'organisationJobs',
              requireAuth: true,
              builder: (context, params) => OrganisationJobsWidget(
                organisationRef: params.getParam('organisationRef',
                    ParamType.DocumentReference, false, ['Organisations']),
                organisationName:
                    params.getParam('organisationName', ParamType.String),
                organisationLogo:
                    params.getParam('organisationLogo', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'workerJobs',
              path: 'workerJobs',
              requireAuth: true,
              builder: (context, params) => WorkerJobsWidget(
                workerRef: params.getParam(
                    'workerRef', ParamType.DocumentReference, false, ['users']),
                workerName: params.getParam('workerName', ParamType.String),
                workerArea: params.getParam('workerArea', ParamType.String),
                workerPhoto: params.getParam('workerPhoto', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'scoutProfile',
              path: 'scoutProfile',
              requireAuth: true,
              builder: (context, params) => ScoutProfileWidget(
                scoutUserRef: params.getParam('scoutUserRef',
                    ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'editScoutProfile',
              path: 'editScoutProfile',
              requireAuth: true,
              builder: (context, params) => EditScoutProfileWidget(
                scoutUserRef: params.getParam('scoutUserRef',
                    ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'workerProfile',
              path: 'workerProfile',
              requireAuth: true,
              builder: (context, params) => WorkerProfileWidget(
                workerUserRef: params.getParam('workerUserRef',
                    ParamType.DocumentReference, false, ['users']),
                workerRef: params.getParam('workerRef',
                    ParamType.DocumentReference, false, ['Workers']),
              ),
            ),
            FFRoute(
              name: 'editOrganisation',
              path: 'editOrganisation',
              requireAuth: true,
              builder: (context, params) => EditOrganisationWidget(
                orgRef: params.getParam('orgRef', ParamType.DocumentReference,
                    false, ['Organisations']),
              ),
            ),
            FFRoute(
              name: 'editWorkerProfile',
              path: 'editWorkerProfile',
              requireAuth: true,
              builder: (context, params) => EditWorkerProfileWidget(
                workerUserRef: params.getParam('workerUserRef',
                    ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'addOrganisation',
              path: 'addOrganisation',
              requireAuth: true,
              builder: (context, params) => AddOrganisationWidget(),
            ),
            FFRoute(
              name: 'scoutOTP',
              path: 'scoutOTP',
              builder: (context, params) => ScoutOTPWidget(
                captainFullName:
                    params.getParam('captainFullName', ParamType.String),
                captainMobilePhone:
                    params.getParam('captainMobilePhone', ParamType.String),
                captainEmail: params.getParam('captainEmail', ParamType.String),
                captainDOB: params.getParam('captainDOB', ParamType.DateTime),
                captainGender:
                    params.getParam('captainGender', ParamType.String),
                captainPinCode:
                    params.getParam('captainPinCode', ParamType.String),
                captainArea: params.getParam('captainArea', ParamType.String),
                captainState: params.getParam('captainState', ParamType.String),
                captainDistrict:
                    params.getParam('captainDistrict', ParamType.String),
                captainRecruitmentArea:
                    params.getParam('captainRecruitmentArea', ParamType.String),
                captainReferralCode:
                    params.getParam('captainReferralCode', ParamType.String),
                captainAadhar:
                    params.getParam('captainAadhar', ParamType.String),
                captainPan: params.getParam('captainPan', ParamType.String),
                captainIFSCCode:
                    params.getParam('captainIFSCCode', ParamType.String),
                captainAccountNumber:
                    params.getParam('captainAccountNumber', ParamType.String),
                captainAccountName:
                    params.getParam('captainAccountName', ParamType.String),
                captainBankName:
                    params.getParam('captainBankName', ParamType.String),
                captainPhoto: params.getParam('captainPhoto', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'organisationProfile',
              path: 'organisationProfile',
              requireAuth: true,
              builder: (context, params) => OrganisationProfileWidget(
                orgRef: params.getParam('orgRef', ParamType.DocumentReference,
                    false, ['Organisations']),
                orgPhoto: params.getParam('orgPhoto', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'addScout',
              path: 'addScout',
              builder: (context, params) => AddScoutWidget(),
            ),
            FFRoute(
              name: 'addWorker',
              path: 'addWorker',
              requireAuth: true,
              builder: (context, params) => AddWorkerWidget(),
            ),
            FFRoute(
              name: 'workerOTP',
              path: 'workerOTP',
              builder: (context, params) => WorkerOTPWidget(
                workerFullName:
                    params.getParam('workerFullName', ParamType.String),
                workerMobilePhone:
                    params.getParam('workerMobilePhone', ParamType.String),
                workerEmail: params.getParam('workerEmail', ParamType.String),
                workerDOB: params.getParam('workerDOB', ParamType.DateTime),
                workerGender: params.getParam('workerGender', ParamType.String),
                workerPinCode:
                    params.getParam('workerPinCode', ParamType.String),
                workerArea: params.getParam('workerArea', ParamType.String),
                workerState: params.getParam('workerState', ParamType.String),
                workerDistrict:
                    params.getParam('workerDistrict', ParamType.String),
                workerAadhar: params.getParam('workerAadhar', ParamType.String),
                workerPan: params.getParam('workerPan', ParamType.String),
                workerIFSCCode:
                    params.getParam('workerIFSCCode', ParamType.String),
                workerAccountNumber:
                    params.getParam('workerAccountNumber', ParamType.String),
                workerAccountName:
                    params.getParam('workerAccountName', ParamType.String),
                workerBankName:
                    params.getParam('workerBankName', ParamType.String),
                workerPhoto: params.getParam('workerPhoto', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'editCaptainProfile',
              path: 'editCaptainProfile',
              requireAuth: true,
              builder: (context, params) => EditCaptainProfileWidget(
                captainUserRef: params.getParam('captainUserRef',
                    ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'addSkillsExp',
              path: 'addSkillsExp',
              requireAuth: true,
              builder: (context, params) => AddSkillsExpWidget(
                workerRef: params.getParam(
                    'workerRef', ParamType.DocumentReference, false, ['users']),
                workerDoc: params.getParam('workerDoc',
                    ParamType.DocumentReference, false, ['Workers']),
              ),
            ),
            FFRoute(
              name: 'createJobContract',
              path: 'createJobContract',
              builder: (context, params) => CreateJobContractWidget(
                jobTitle: params.getParam('jobTitle', ParamType.String),
                workerFullName:
                    params.getParam('workerFullName', ParamType.String),
                workerGender: params.getParam('workerGender', ParamType.String),
                workerSkill: params.getParam('workerSkill', ParamType.String),
                workerExperience:
                    params.getParam('workerExperience', ParamType.String),
                workerPhoto: params.getParam('workerPhoto', ParamType.String),
                organisationRef: params.getParam('organisationRef',
                    ParamType.DocumentReference, false, ['Organisations']),
                workerRef: params.getParam('workerRef',
                    ParamType.DocumentReference, false, ['Workers']),
                jobRef: params.getParam('jobRef', ParamType.DocumentReference,
                    false, ['Organisations', 'Jobs']),
                orgRef: params.getParam('orgRef', ParamType.DocumentReference,
                    false, ['Organisations']),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  child: Image.asset(
                    'assets/images/splash_app_Tracker@2x.png',
                    fit: BoxFit.fitHeight,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
