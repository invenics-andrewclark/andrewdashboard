import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'worker_experience_record.g.dart';

abstract class WorkerExperienceRecord
    implements Built<WorkerExperienceRecord, WorkerExperienceRecordBuilder> {
  static Serializer<WorkerExperienceRecord> get serializer =>
      _$workerExperienceRecordSerializer;

  @BuiltValueField(wireName: 'company_name')
  String? get companyName;

  @BuiltValueField(wireName: 'job_title')
  String? get jobTitle;

  @BuiltValueField(wireName: 'primary_skill')
  String? get primarySkill;

  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;

  @BuiltValueField(wireName: 'end_date')
  DateTime? get endDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(WorkerExperienceRecordBuilder builder) =>
      builder
        ..companyName = ''
        ..jobTitle = ''
        ..primarySkill = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('workerExperience')
          : FirebaseFirestore.instance.collectionGroup('workerExperience');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('workerExperience').doc();

  static Stream<WorkerExperienceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WorkerExperienceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WorkerExperienceRecord._();
  factory WorkerExperienceRecord(
          [void Function(WorkerExperienceRecordBuilder) updates]) =
      _$WorkerExperienceRecord;

  static WorkerExperienceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWorkerExperienceRecordData({
  String? companyName,
  String? jobTitle,
  String? primarySkill,
  DateTime? startDate,
  DateTime? endDate,
}) {
  final firestoreData = serializers.toFirestore(
    WorkerExperienceRecord.serializer,
    WorkerExperienceRecord(
      (w) => w
        ..companyName = companyName
        ..jobTitle = jobTitle
        ..primarySkill = primarySkill
        ..startDate = startDate
        ..endDate = endDate,
    ),
  );

  return firestoreData;
}
