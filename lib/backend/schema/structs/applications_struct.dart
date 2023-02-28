import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'applications_struct.g.dart';

abstract class ApplicationsStruct
    implements Built<ApplicationsStruct, ApplicationsStructBuilder> {
  static Serializer<ApplicationsStruct> get serializer =>
      _$applicationsStructSerializer;

  @BuiltValueField(wireName: 'application_status')
  String? get applicationStatus;

  @BuiltValueField(wireName: 'applied_on')
  String? get appliedOn;

  String? get comments;

  @BuiltValueField(wireName: 'worker_name')
  String? get workerName;

  String? get gender;

  String? get location;

  @BuiltValueField(wireName: 'key_skill')
  String? get keySkill;

  String? get experience;

  @BuiltValueField(wireName: 'worker_id')
  DocumentReference? get workerId;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ApplicationsStructBuilder builder) => builder
    ..applicationStatus = ''
    ..appliedOn = ''
    ..comments = ''
    ..workerName = ''
    ..gender = ''
    ..location = ''
    ..keySkill = ''
    ..experience = ''
    ..firestoreUtilData = FirestoreUtilData();

  ApplicationsStruct._();
  factory ApplicationsStruct(
          [void Function(ApplicationsStructBuilder) updates]) =
      _$ApplicationsStruct;
}

ApplicationsStruct createApplicationsStruct({
  String? applicationStatus,
  String? appliedOn,
  String? comments,
  String? workerName,
  String? gender,
  String? location,
  String? keySkill,
  String? experience,
  DocumentReference? workerId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApplicationsStruct(
      (a) => a
        ..applicationStatus = applicationStatus
        ..appliedOn = appliedOn
        ..comments = comments
        ..workerName = workerName
        ..gender = gender
        ..location = location
        ..keySkill = keySkill
        ..experience = experience
        ..workerId = workerId
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ApplicationsStruct? updateApplicationsStruct(
  ApplicationsStruct? applications, {
  bool clearUnsetFields = true,
}) =>
    applications != null
        ? (applications.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addApplicationsStructData(
  Map<String, dynamic> firestoreData,
  ApplicationsStruct? applications,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (applications == null) {
    return;
  }
  if (applications.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && applications.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final applicationsData =
      getApplicationsFirestoreData(applications, forFieldValue);
  final nestedData =
      applicationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = applications.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getApplicationsFirestoreData(
  ApplicationsStruct? applications, [
  bool forFieldValue = false,
]) {
  if (applications == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ApplicationsStruct.serializer, applications);

  // Add any Firestore field values
  applications.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApplicationsListFirestoreData(
  List<ApplicationsStruct>? applicationss,
) =>
    applicationss?.map((a) => getApplicationsFirestoreData(a, true)).toList() ??
    [];
