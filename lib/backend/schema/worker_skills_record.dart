import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'worker_skills_record.g.dart';

abstract class WorkerSkillsRecord
    implements Built<WorkerSkillsRecord, WorkerSkillsRecordBuilder> {
  static Serializer<WorkerSkillsRecord> get serializer =>
      _$workerSkillsRecordSerializer;

  @BuiltValueField(wireName: 'skill_name')
  String? get skillName;

  @BuiltValueField(wireName: 'experience_level')
  String? get experienceLevel;

  @BuiltValueField(wireName: 'is_primary')
  bool? get isPrimary;

  @BuiltValueField(wireName: 'experience_years')
  String? get experienceYears;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(WorkerSkillsRecordBuilder builder) => builder
    ..skillName = ''
    ..experienceLevel = ''
    ..isPrimary = false
    ..experienceYears = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('workerSkills')
          : FirebaseFirestore.instance.collectionGroup('workerSkills');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('workerSkills').doc();

  static Stream<WorkerSkillsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WorkerSkillsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WorkerSkillsRecord._();
  factory WorkerSkillsRecord(
          [void Function(WorkerSkillsRecordBuilder) updates]) =
      _$WorkerSkillsRecord;

  static WorkerSkillsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWorkerSkillsRecordData({
  String? skillName,
  String? experienceLevel,
  bool? isPrimary,
  String? experienceYears,
}) {
  final firestoreData = serializers.toFirestore(
    WorkerSkillsRecord.serializer,
    WorkerSkillsRecord(
      (w) => w
        ..skillName = skillName
        ..experienceLevel = experienceLevel
        ..isPrimary = isPrimary
        ..experienceYears = experienceYears,
    ),
  );

  return firestoreData;
}
