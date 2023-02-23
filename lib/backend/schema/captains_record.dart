import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'captains_record.g.dart';

abstract class CaptainsRecord
    implements Built<CaptainsRecord, CaptainsRecordBuilder> {
  static Serializer<CaptainsRecord> get serializer =>
      _$captainsRecordSerializer;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  String? get phone;

  DateTime? get dob;

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

  @BuiltValueField(wireName: 'referral_code')
  String? get referralCode;

  @BuiltValueField(wireName: 'recruitment_area')
  String? get recruitmentArea;

  String? get tag;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'organisation_id')
  DocumentReference? get organisationId;

  @BuiltValueField(wireName: 'job_id')
  BuiltList<DocumentReference>? get jobId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CaptainsRecordBuilder builder) => builder
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
    ..referralCode = ''
    ..recruitmentArea = ''
    ..tag = ''
    ..jobId = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Captains');

  static Stream<CaptainsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CaptainsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CaptainsRecord._();
  factory CaptainsRecord([void Function(CaptainsRecordBuilder) updates]) =
      _$CaptainsRecord;

  static CaptainsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCaptainsRecordData({
  String? fullName,
  String? phone,
  DateTime? dob,
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
  String? referralCode,
  String? recruitmentArea,
  String? tag,
  DocumentReference? userRef,
  DocumentReference? organisationId,
}) {
  final firestoreData = serializers.toFirestore(
    CaptainsRecord.serializer,
    CaptainsRecord(
      (c) => c
        ..fullName = fullName
        ..phone = phone
        ..dob = dob
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
        ..referralCode = referralCode
        ..recruitmentArea = recruitmentArea
        ..tag = tag
        ..userRef = userRef
        ..organisationId = organisationId
        ..jobId = null,
    ),
  );

  return firestoreData;
}
