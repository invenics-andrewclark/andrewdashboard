import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'skills_record.g.dart';

abstract class SkillsRecord
    implements Built<SkillsRecord, SkillsRecordBuilder> {
  static Serializer<SkillsRecord> get serializer => _$skillsRecordSerializer;

  @BuiltValueField(wireName: 'skill_name')
  String? get skillName;

  @BuiltValueField(wireName: 'experience_level')
  String? get experienceLevel;

  @BuiltValueField(wireName: 'experience_years')
  String? get experienceYears;

  @BuiltValueField(wireName: 'primary_skill')
  String? get primarySkill;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SkillsRecordBuilder builder) => builder
    ..skillName = ''
    ..experienceLevel = ''
    ..experienceYears = ''
    ..primarySkill = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Skills')
          : FirebaseFirestore.instance.collectionGroup('Skills');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Skills').doc();

  static Stream<SkillsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SkillsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SkillsRecord._();
  factory SkillsRecord([void Function(SkillsRecordBuilder) updates]) =
      _$SkillsRecord;

  static SkillsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSkillsRecordData({
  String? skillName,
  String? experienceLevel,
  String? experienceYears,
  String? primarySkill,
}) {
  final firestoreData = serializers.toFirestore(
    SkillsRecord.serializer,
    SkillsRecord(
      (s) => s
        ..skillName = skillName
        ..experienceLevel = experienceLevel
        ..experienceYears = experienceYears
        ..primarySkill = primarySkill,
    ),
  );

  return firestoreData;
}
