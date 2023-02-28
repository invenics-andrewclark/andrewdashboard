import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'job_worker_record.g.dart';

abstract class JobWorkerRecord
    implements Built<JobWorkerRecord, JobWorkerRecordBuilder> {
  static Serializer<JobWorkerRecord> get serializer =>
      _$jobWorkerRecordSerializer;

  @BuiltValueField(wireName: 'applied_date')
  DateTime? get appliedDate;

  @BuiltValueField(wireName: 'application_status')
  String? get applicationStatus;

  String? get comments;

  @BuiltValueField(wireName: 'worker_id')
  DocumentReference? get workerId;

  @BuiltValueField(wireName: 'worker_name')
  String? get workerName;

  String? get gender;

  @BuiltValueField(wireName: 'experience_level')
  String? get experienceLevel;

  @BuiltValueField(wireName: 'worker_image')
  String? get workerImage;

  @BuiltValueField(wireName: 'organisation_name')
  String? get organisationName;

  @BuiltValueField(wireName: 'job_name')
  String? get jobName;

  @BuiltValueField(wireName: 'org_name')
  String? get orgName;

  @BuiltValueField(wireName: 'key_skill')
  String? get keySkill;

  @BuiltValueField(wireName: 'org_reference')
  DocumentReference? get orgReference;

  @BuiltValueField(wireName: 'job_reference')
  DocumentReference? get jobReference;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(JobWorkerRecordBuilder builder) => builder
    ..applicationStatus = ''
    ..comments = ''
    ..workerName = ''
    ..gender = ''
    ..experienceLevel = ''
    ..workerImage = ''
    ..organisationName = ''
    ..jobName = ''
    ..orgName = ''
    ..keySkill = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Job_worker')
          : FirebaseFirestore.instance.collectionGroup('Job_worker');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Job_worker').doc();

  static Stream<JobWorkerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<JobWorkerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  JobWorkerRecord._();
  factory JobWorkerRecord([void Function(JobWorkerRecordBuilder) updates]) =
      _$JobWorkerRecord;

  static JobWorkerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createJobWorkerRecordData({
  DateTime? appliedDate,
  String? applicationStatus,
  String? comments,
  DocumentReference? workerId,
  String? workerName,
  String? gender,
  String? experienceLevel,
  String? workerImage,
  String? organisationName,
  String? jobName,
  String? orgName,
  String? keySkill,
  DocumentReference? orgReference,
  DocumentReference? jobReference,
}) {
  final firestoreData = serializers.toFirestore(
    JobWorkerRecord.serializer,
    JobWorkerRecord(
      (j) => j
        ..appliedDate = appliedDate
        ..applicationStatus = applicationStatus
        ..comments = comments
        ..workerId = workerId
        ..workerName = workerName
        ..gender = gender
        ..experienceLevel = experienceLevel
        ..workerImage = workerImage
        ..organisationName = organisationName
        ..jobName = jobName
        ..orgName = orgName
        ..keySkill = keySkill
        ..orgReference = orgReference
        ..jobReference = jobReference,
    ),
  );

  return firestoreData;
}
