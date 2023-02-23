import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'organisations_record.g.dart';

abstract class OrganisationsRecord
    implements Built<OrganisationsRecord, OrganisationsRecordBuilder> {
  static Serializer<OrganisationsRecord> get serializer =>
      _$organisationsRecordSerializer;

  @BuiltValueField(wireName: 'organisation_name')
  String? get organisationName;

  @BuiltValueField(wireName: 'organisation_logo')
  String? get organisationLogo;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get email;

  @BuiltValueField(wireName: 'created_date')
  DateTime? get createdDate;

  @BuiltValueField(wireName: 'pin_code')
  String? get pinCode;

  String? get area;

  String? get state;

  String? get district;

  String? get address;

  @BuiltValueField(wireName: 'contact_name')
  String? get contactName;

  @BuiltValueField(wireName: 'organisation_ref')
  DocumentReference? get organisationRef;

  @BuiltValueField(wireName: 'organisation_captains')
  BuiltList<DocumentReference>? get organisationCaptains;

  String? get industry;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrganisationsRecordBuilder builder) => builder
    ..organisationName = ''
    ..organisationLogo = ''
    ..phoneNumber = ''
    ..email = ''
    ..pinCode = ''
    ..area = ''
    ..state = ''
    ..district = ''
    ..address = ''
    ..contactName = ''
    ..organisationCaptains = ListBuilder()
    ..industry = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Organisations');

  static Stream<OrganisationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrganisationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrganisationsRecord._();
  factory OrganisationsRecord(
          [void Function(OrganisationsRecordBuilder) updates]) =
      _$OrganisationsRecord;

  static OrganisationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrganisationsRecordData({
  String? organisationName,
  String? organisationLogo,
  String? phoneNumber,
  String? email,
  DateTime? createdDate,
  String? pinCode,
  String? area,
  String? state,
  String? district,
  String? address,
  String? contactName,
  DocumentReference? organisationRef,
  String? industry,
}) {
  final firestoreData = serializers.toFirestore(
    OrganisationsRecord.serializer,
    OrganisationsRecord(
      (o) => o
        ..organisationName = organisationName
        ..organisationLogo = organisationLogo
        ..phoneNumber = phoneNumber
        ..email = email
        ..createdDate = createdDate
        ..pinCode = pinCode
        ..area = area
        ..state = state
        ..district = district
        ..address = address
        ..contactName = contactName
        ..organisationRef = organisationRef
        ..organisationCaptains = null
        ..industry = industry,
    ),
  );

  return firestoreData;
}
