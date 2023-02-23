import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'jobs_record.g.dart';

abstract class JobsRecord implements Built<JobsRecord, JobsRecordBuilder> {
  static Serializer<JobsRecord> get serializer => _$jobsRecordSerializer;

  @BuiltValueField(wireName: 'organisation_name')
  String? get organisationName;

  @BuiltValueField(wireName: 'job_title')
  String? get jobTitle;

  @BuiltValueField(wireName: 'job_description')
  String? get jobDescription;

  @BuiltValueField(wireName: 'min_qualification')
  String? get minQualification;

  @BuiltValueField(wireName: 'min_salary')
  int? get minSalary;

  @BuiltValueField(wireName: 'max_salary')
  int? get maxSalary;

  @BuiltValueField(wireName: 'mode_of_salary')
  String? get modeOfSalary;

  @BuiltValueField(wireName: 'number_of_vacancies')
  int? get numberOfVacancies;

  String? get gender;

  @BuiltValueField(wireName: 'min_age')
  int? get minAge;

  @BuiltValueField(wireName: 'max_age')
  int? get maxAge;

  @BuiltValueField(wireName: 'job_image')
  String? get jobImage;

  @BuiltValueField(wireName: 'job_category')
  String? get jobCategory;

  @BuiltValueField(wireName: 'working_hours')
  int? get workingHours;

  @BuiltValueField(wireName: 'job_sub_category')
  String? get jobSubCategory;

  @BuiltValueField(wireName: 'pin_code')
  String? get pinCode;

  String? get area;

  String? get state;

  String? get district;

  @BuiltValueField(wireName: 'primary_skill')
  String? get primarySkill;

  @BuiltValueField(wireName: 'primary_skill_level')
  String? get primarySkillLevel;

  @BuiltValueField(wireName: 'min_experience')
  String? get minExperience;

  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;

  @BuiltValueField(wireName: 'end_date')
  DateTime? get endDate;

  @BuiltValueField(wireName: 'organisation_ref')
  DocumentReference? get organisationRef;

  BuiltList<String>? get facilities;

  @BuiltValueField(wireName: 'is_complete')
  bool? get isComplete;

  @BuiltValueField(wireName: 'job_reference')
  DocumentReference? get jobReference;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(JobsRecordBuilder builder) => builder
    ..organisationName = ''
    ..jobTitle = ''
    ..jobDescription = ''
    ..minQualification = ''
    ..minSalary = 0
    ..maxSalary = 0
    ..modeOfSalary = ''
    ..numberOfVacancies = 0
    ..gender = ''
    ..minAge = 0
    ..maxAge = 0
    ..jobImage = ''
    ..jobCategory = ''
    ..workingHours = 0
    ..jobSubCategory = ''
    ..pinCode = ''
    ..area = ''
    ..state = ''
    ..district = ''
    ..primarySkill = ''
    ..primarySkillLevel = ''
    ..minExperience = ''
    ..facilities = ListBuilder()
    ..isComplete = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Jobs')
          : FirebaseFirestore.instance.collectionGroup('Jobs');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Jobs').doc();

  static Stream<JobsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  JobsRecord._();
  factory JobsRecord([void Function(JobsRecordBuilder) updates]) = _$JobsRecord;

  static JobsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createJobsRecordData({
  String? organisationName,
  String? jobTitle,
  String? jobDescription,
  String? minQualification,
  int? minSalary,
  int? maxSalary,
  String? modeOfSalary,
  int? numberOfVacancies,
  String? gender,
  int? minAge,
  int? maxAge,
  String? jobImage,
  String? jobCategory,
  int? workingHours,
  String? jobSubCategory,
  String? pinCode,
  String? area,
  String? state,
  String? district,
  String? primarySkill,
  String? primarySkillLevel,
  String? minExperience,
  DateTime? startDate,
  DateTime? endDate,
  DocumentReference? organisationRef,
  bool? isComplete,
  DocumentReference? jobReference,
}) {
  final firestoreData = serializers.toFirestore(
    JobsRecord.serializer,
    JobsRecord(
      (j) => j
        ..organisationName = organisationName
        ..jobTitle = jobTitle
        ..jobDescription = jobDescription
        ..minQualification = minQualification
        ..minSalary = minSalary
        ..maxSalary = maxSalary
        ..modeOfSalary = modeOfSalary
        ..numberOfVacancies = numberOfVacancies
        ..gender = gender
        ..minAge = minAge
        ..maxAge = maxAge
        ..jobImage = jobImage
        ..jobCategory = jobCategory
        ..workingHours = workingHours
        ..jobSubCategory = jobSubCategory
        ..pinCode = pinCode
        ..area = area
        ..state = state
        ..district = district
        ..primarySkill = primarySkill
        ..primarySkillLevel = primarySkillLevel
        ..minExperience = minExperience
        ..startDate = startDate
        ..endDate = endDate
        ..organisationRef = organisationRef
        ..facilities = null
        ..isComplete = isComplete
        ..jobReference = jobReference,
    ),
  );

  return firestoreData;
}
