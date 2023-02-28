import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'employment_contracts_record.g.dart';

abstract class EmploymentContractsRecord
    implements
        Built<EmploymentContractsRecord, EmploymentContractsRecordBuilder> {
  static Serializer<EmploymentContractsRecord> get serializer =>
      _$employmentContractsRecordSerializer;

  @BuiltValueField(wireName: 'contract_signed')
  bool? get contractSigned;

  int? get salary;

  @BuiltValueField(wireName: 'mode_of_salary')
  String? get modeOfSalary;

  @BuiltValueField(wireName: 'job_reference')
  DocumentReference? get jobReference;

  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;

  @BuiltValueField(wireName: 'end_date')
  DateTime? get endDate;

  @BuiltValueField(wireName: 'worker_name')
  String? get workerName;

  @BuiltValueField(wireName: 'worker_gender')
  String? get workerGender;

  @BuiltValueField(wireName: 'worker_skill')
  String? get workerSkill;

  @BuiltValueField(wireName: 'worker_skill_experience')
  String? get workerSkillExperience;

  @BuiltValueField(wireName: 'worker_image')
  String? get workerImage;

  @BuiltValueField(wireName: 'organisation_reference')
  DocumentReference? get organisationReference;

  @BuiltValueField(wireName: 'worker_reference')
  DocumentReference? get workerReference;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(EmploymentContractsRecordBuilder builder) =>
      builder
        ..contractSigned = false
        ..salary = 0
        ..modeOfSalary = ''
        ..workerName = ''
        ..workerGender = ''
        ..workerSkill = ''
        ..workerSkillExperience = ''
        ..workerImage = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('employmentContracts')
          : FirebaseFirestore.instance.collectionGroup('employmentContracts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('employmentContracts').doc();

  static Stream<EmploymentContractsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmploymentContractsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmploymentContractsRecord._();
  factory EmploymentContractsRecord(
          [void Function(EmploymentContractsRecordBuilder) updates]) =
      _$EmploymentContractsRecord;

  static EmploymentContractsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmploymentContractsRecordData({
  bool? contractSigned,
  int? salary,
  String? modeOfSalary,
  DocumentReference? jobReference,
  DateTime? startDate,
  DateTime? endDate,
  String? workerName,
  String? workerGender,
  String? workerSkill,
  String? workerSkillExperience,
  String? workerImage,
  DocumentReference? organisationReference,
  DocumentReference? workerReference,
}) {
  final firestoreData = serializers.toFirestore(
    EmploymentContractsRecord.serializer,
    EmploymentContractsRecord(
      (e) => e
        ..contractSigned = contractSigned
        ..salary = salary
        ..modeOfSalary = modeOfSalary
        ..jobReference = jobReference
        ..startDate = startDate
        ..endDate = endDate
        ..workerName = workerName
        ..workerGender = workerGender
        ..workerSkill = workerSkill
        ..workerSkillExperience = workerSkillExperience
        ..workerImage = workerImage
        ..organisationReference = organisationReference
        ..workerReference = workerReference,
    ),
  );

  return firestoreData;
}
