import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'workers_record.g.dart';

abstract class WorkersRecord
    implements Built<WorkersRecord, WorkersRecordBuilder> {
  static Serializer<WorkersRecord> get serializer => _$workersRecordSerializer;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  String? get phone;

  String? get gender;

  String? get photo;

  String? get email;

  @BuiltValueField(wireName: 'created_date')
  DateTime? get createdDate;

  @BuiltValueField(wireName: 'pin_code')
  String? get pinCode;

  String? get area;

  String? get state;

  String? get district;

  String? get aadhar;

  @BuiltValueField(wireName: 'pan_number')
  String? get panNumber;

  @BuiltValueField(wireName: 'account_name')
  String? get accountName;

  @BuiltValueField(wireName: 'account_number')
  String? get accountNumber;

  @BuiltValueField(wireName: 'bank_name')
  String? get bankName;

  @BuiltValueField(wireName: 'ifsc_code')
  String? get ifscCode;

  @BuiltValueField(wireName: 'highest_qualification')
  String? get highestQualification;

  @BuiltValueField(wireName: 'date_available_from')
  DateTime? get dateAvailableFrom;

  @BuiltValueField(wireName: 'job_worker_id')
  DocumentReference? get jobWorkerId;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'organisation_id')
  DocumentReference? get organisationId;

  @BuiltValueField(wireName: 'is_working')
  bool? get isWorking;

  String? get dob;

  @BuiltValueField(wireName: 'captain_scout_ref')
  DocumentReference? get captainScoutRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WorkersRecordBuilder builder) => builder
    ..fullName = ''
    ..phone = ''
    ..gender = ''
    ..photo = ''
    ..email = ''
    ..pinCode = ''
    ..area = ''
    ..state = ''
    ..district = ''
    ..aadhar = ''
    ..panNumber = ''
    ..accountName = ''
    ..accountNumber = ''
    ..bankName = ''
    ..ifscCode = ''
    ..highestQualification = ''
    ..isWorking = false
    ..dob = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Workers');

  static Stream<WorkersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WorkersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WorkersRecord._();
  factory WorkersRecord([void Function(WorkersRecordBuilder) updates]) =
      _$WorkersRecord;

  static WorkersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWorkersRecordData({
  String? fullName,
  String? phone,
  String? gender,
  String? photo,
  String? email,
  DateTime? createdDate,
  String? pinCode,
  String? area,
  String? state,
  String? district,
  String? aadhar,
  String? panNumber,
  String? accountName,
  String? accountNumber,
  String? bankName,
  String? ifscCode,
  String? highestQualification,
  DateTime? dateAvailableFrom,
  DocumentReference? jobWorkerId,
  DocumentReference? userRef,
  DocumentReference? organisationId,
  bool? isWorking,
  String? dob,
  DocumentReference? captainScoutRef,
}) {
  final firestoreData = serializers.toFirestore(
    WorkersRecord.serializer,
    WorkersRecord(
      (w) => w
        ..fullName = fullName
        ..phone = phone
        ..gender = gender
        ..photo = photo
        ..email = email
        ..createdDate = createdDate
        ..pinCode = pinCode
        ..area = area
        ..state = state
        ..district = district
        ..aadhar = aadhar
        ..panNumber = panNumber
        ..accountName = accountName
        ..accountNumber = accountNumber
        ..bankName = bankName
        ..ifscCode = ifscCode
        ..highestQualification = highestQualification
        ..dateAvailableFrom = dateAvailableFrom
        ..jobWorkerId = jobWorkerId
        ..userRef = userRef
        ..organisationId = organisationId
        ..isWorking = isWorking
        ..dob = dob
        ..captainScoutRef = captainScoutRef,
    ),
  );

  return firestoreData;
}
