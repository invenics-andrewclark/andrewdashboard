// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrganisationsRecord> _$organisationsRecordSerializer =
    new _$OrganisationsRecordSerializer();

class _$OrganisationsRecordSerializer
    implements StructuredSerializer<OrganisationsRecord> {
  @override
  final Iterable<Type> types = const [
    OrganisationsRecord,
    _$OrganisationsRecord
  ];
  @override
  final String wireName = 'OrganisationsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OrganisationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.organisationName;
    if (value != null) {
      result
        ..add('organisation_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organisationLogo;
    if (value != null) {
      result
        ..add('organisation_logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('created_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pinCode;
    if (value != null) {
      result
        ..add('pin_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactName;
    if (value != null) {
      result
        ..add('contact_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organisationRef;
    if (value != null) {
      result
        ..add('organisation_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.organisationCaptains;
    if (value != null) {
      result
        ..add('organisation_captains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.industry;
    if (value != null) {
      result
        ..add('industry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrganisationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganisationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'organisation_name':
          result.organisationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organisation_logo':
          result.organisationLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'pin_code':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contact_name':
          result.contactName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organisation_ref':
          result.organisationRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'organisation_captains':
          result.organisationCaptains.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'industry':
          result.industry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrganisationsRecord extends OrganisationsRecord {
  @override
  final String? organisationName;
  @override
  final String? organisationLogo;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final DateTime? createdDate;
  @override
  final String? pinCode;
  @override
  final String? area;
  @override
  final String? state;
  @override
  final String? district;
  @override
  final String? address;
  @override
  final String? contactName;
  @override
  final DocumentReference<Object?>? organisationRef;
  @override
  final BuiltList<DocumentReference<Object?>>? organisationCaptains;
  @override
  final String? industry;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrganisationsRecord(
          [void Function(OrganisationsRecordBuilder)? updates]) =>
      (new OrganisationsRecordBuilder()..update(updates))._build();

  _$OrganisationsRecord._(
      {this.organisationName,
      this.organisationLogo,
      this.phoneNumber,
      this.email,
      this.createdDate,
      this.pinCode,
      this.area,
      this.state,
      this.district,
      this.address,
      this.contactName,
      this.organisationRef,
      this.organisationCaptains,
      this.industry,
      this.ffRef})
      : super._();

  @override
  OrganisationsRecord rebuild(
          void Function(OrganisationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganisationsRecordBuilder toBuilder() =>
      new OrganisationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganisationsRecord &&
        organisationName == other.organisationName &&
        organisationLogo == other.organisationLogo &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        createdDate == other.createdDate &&
        pinCode == other.pinCode &&
        area == other.area &&
        state == other.state &&
        district == other.district &&
        address == other.address &&
        contactName == other.contactName &&
        organisationRef == other.organisationRef &&
        organisationCaptains == other.organisationCaptains &&
        industry == other.industry &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                organisationName
                                                                    .hashCode),
                                                            organisationLogo
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    email.hashCode),
                                                createdDate.hashCode),
                                            pinCode.hashCode),
                                        area.hashCode),
                                    state.hashCode),
                                district.hashCode),
                            address.hashCode),
                        contactName.hashCode),
                    organisationRef.hashCode),
                organisationCaptains.hashCode),
            industry.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganisationsRecord')
          ..add('organisationName', organisationName)
          ..add('organisationLogo', organisationLogo)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('createdDate', createdDate)
          ..add('pinCode', pinCode)
          ..add('area', area)
          ..add('state', state)
          ..add('district', district)
          ..add('address', address)
          ..add('contactName', contactName)
          ..add('organisationRef', organisationRef)
          ..add('organisationCaptains', organisationCaptains)
          ..add('industry', industry)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrganisationsRecordBuilder
    implements Builder<OrganisationsRecord, OrganisationsRecordBuilder> {
  _$OrganisationsRecord? _$v;

  String? _organisationName;
  String? get organisationName => _$this._organisationName;
  set organisationName(String? organisationName) =>
      _$this._organisationName = organisationName;

  String? _organisationLogo;
  String? get organisationLogo => _$this._organisationLogo;
  set organisationLogo(String? organisationLogo) =>
      _$this._organisationLogo = organisationLogo;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _pinCode;
  String? get pinCode => _$this._pinCode;
  set pinCode(String? pinCode) => _$this._pinCode = pinCode;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  DocumentReference<Object?>? _organisationRef;
  DocumentReference<Object?>? get organisationRef => _$this._organisationRef;
  set organisationRef(DocumentReference<Object?>? organisationRef) =>
      _$this._organisationRef = organisationRef;

  ListBuilder<DocumentReference<Object?>>? _organisationCaptains;
  ListBuilder<DocumentReference<Object?>> get organisationCaptains =>
      _$this._organisationCaptains ??=
          new ListBuilder<DocumentReference<Object?>>();
  set organisationCaptains(
          ListBuilder<DocumentReference<Object?>>? organisationCaptains) =>
      _$this._organisationCaptains = organisationCaptains;

  String? _industry;
  String? get industry => _$this._industry;
  set industry(String? industry) => _$this._industry = industry;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrganisationsRecordBuilder() {
    OrganisationsRecord._initializeBuilder(this);
  }

  OrganisationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organisationName = $v.organisationName;
      _organisationLogo = $v.organisationLogo;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _createdDate = $v.createdDate;
      _pinCode = $v.pinCode;
      _area = $v.area;
      _state = $v.state;
      _district = $v.district;
      _address = $v.address;
      _contactName = $v.contactName;
      _organisationRef = $v.organisationRef;
      _organisationCaptains = $v.organisationCaptains?.toBuilder();
      _industry = $v.industry;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganisationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganisationsRecord;
  }

  @override
  void update(void Function(OrganisationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganisationsRecord build() => _build();

  _$OrganisationsRecord _build() {
    _$OrganisationsRecord _$result;
    try {
      _$result = _$v ??
          new _$OrganisationsRecord._(
              organisationName: organisationName,
              organisationLogo: organisationLogo,
              phoneNumber: phoneNumber,
              email: email,
              createdDate: createdDate,
              pinCode: pinCode,
              area: area,
              state: state,
              district: district,
              address: address,
              contactName: contactName,
              organisationRef: organisationRef,
              organisationCaptains: _organisationCaptains?.build(),
              industry: industry,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organisationCaptains';
        _organisationCaptains?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganisationsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
