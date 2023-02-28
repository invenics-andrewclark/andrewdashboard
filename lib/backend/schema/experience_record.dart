import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'experience_record.g.dart';

abstract class ExperienceRecord
    implements Built<ExperienceRecord, ExperienceRecordBuilder> {
  static Serializer<ExperienceRecord> get serializer =>
      _$experienceRecordSerializer;

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

  static void _initializeBuilder(ExperienceRecordBuilder builder) => builder
    ..companyName = ''
    ..jobTitle = ''
    ..primarySkill = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Experience')
          : FirebaseFirestore.instance.collectionGroup('Experience');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Experience').doc();

  static Stream<ExperienceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExperienceRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExperienceRecord._();
  factory ExperienceRecord([void Function(ExperienceRecordBuilder) updates]) =
      _$ExperienceRecord;

  static ExperienceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExperienceRecordData({
  String? companyName,
  String? jobTitle,
  String? primarySkill,
  DateTime? startDate,
  DateTime? endDate,
}) {
  final firestoreData = serializers.toFirestore(
    ExperienceRecord.serializer,
    ExperienceRecord(
      (e) => e
        ..companyName = companyName
        ..jobTitle = jobTitle
        ..primarySkill = primarySkill
        ..startDate = startDate
        ..endDate = endDate,
    ),
  );

  return firestoreData;
}
