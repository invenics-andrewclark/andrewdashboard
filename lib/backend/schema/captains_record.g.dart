// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captains_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaptainsRecord> _$captainsRecordSerializer =
    new _$CaptainsRecordSerializer();

class _$CaptainsRecordSerializer
    implements StructuredSerializer<CaptainsRecord> {
  @override
  final Iterable<Type> types = const [CaptainsRecord, _$CaptainsRecord];
  @override
  final String wireName = 'CaptainsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CaptainsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
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
    value = object.aadhar;
    if (value != null) {
      result
        ..add('aadhar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.panNumber;
    if (value != null) {
      result
        ..add('pan_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountName;
    if (value != null) {
      result
        ..add('account_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountNumber;
    if (value != null) {
      result
        ..add('account_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankName;
    if (value != null) {
      result
        ..add('bank_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ifscCode;
    if (value != null) {
      result
        ..add('ifsc_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('referral_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruitmentArea;
    if (value != null) {
      result
        ..add('recruitment_area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tag;
    if (value != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.organisationId;
    if (value != null) {
      result
        ..add('organisation_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.jobId;
    if (value != null) {
      result
        ..add('job_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  CaptainsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaptainsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
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
        case 'aadhar':
          result.aadhar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pan_number':
          result.panNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'account_name':
          result.accountName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'account_number':
          result.accountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bank_name':
          result.bankName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ifsc_code':
          result.ifscCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'referral_code':
          result.referralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'recruitment_area':
          result.recruitmentArea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'organisation_id':
          result.organisationId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'job_id':
          result.jobId.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$CaptainsRecord extends CaptainsRecord {
  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final DateTime? dob;
  @override
  final String? gender;
  @override
  final String? photo;
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
  final String? aadhar;
  @override
  final String? panNumber;
  @override
  final String? accountName;
  @override
  final String? accountNumber;
  @override
  final String? bankName;
  @override
  final String? ifscCode;
  @override
  final String? referralCode;
  @override
  final String? recruitmentArea;
  @override
  final String? tag;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? organisationId;
  @override
  final BuiltList<DocumentReference<Object?>>? jobId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CaptainsRecord([void Function(CaptainsRecordBuilder)? updates]) =>
      (new CaptainsRecordBuilder()..update(updates))._build();

  _$CaptainsRecord._(
      {this.fullName,
      this.phone,
      this.dob,
      this.gender,
      this.photo,
      this.email,
      this.createdDate,
      this.pinCode,
      this.area,
      this.state,
      this.district,
      this.aadhar,
      this.panNumber,
      this.accountName,
      this.accountNumber,
      this.bankName,
      this.ifscCode,
      this.referralCode,
      this.recruitmentArea,
      this.tag,
      this.userRef,
      this.organisationId,
      this.jobId,
      this.ffRef})
      : super._();

  @override
  CaptainsRecord rebuild(void Function(CaptainsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaptainsRecordBuilder toBuilder() =>
      new CaptainsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaptainsRecord &&
        fullName == other.fullName &&
        phone == other.phone &&
        dob == other.dob &&
        gender == other.gender &&
        photo == other.photo &&
        email == other.email &&
        createdDate == other.createdDate &&
        pinCode == other.pinCode &&
        area == other.area &&
        state == other.state &&
        district == other.district &&
        aadhar == other.aadhar &&
        panNumber == other.panNumber &&
        accountName == other.accountName &&
        accountNumber == other.accountNumber &&
        bankName == other.bankName &&
        ifscCode == other.ifscCode &&
        referralCode == other.referralCode &&
        recruitmentArea == other.recruitmentArea &&
        tag == other.tag &&
        userRef == other.userRef &&
        organisationId == other.organisationId &&
        jobId == other.jobId &&
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
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, fullName.hashCode), phone.hashCode), dob.hashCode), gender.hashCode), photo.hashCode),
                                                                                email.hashCode),
                                                                            createdDate.hashCode),
                                                                        pinCode.hashCode),
                                                                    area.hashCode),
                                                                state.hashCode),
                                                            district.hashCode),
                                                        aadhar.hashCode),
                                                    panNumber.hashCode),
                                                accountName.hashCode),
                                            accountNumber.hashCode),
                                        bankName.hashCode),
                                    ifscCode.hashCode),
                                referralCode.hashCode),
                            recruitmentArea.hashCode),
                        tag.hashCode),
                    userRef.hashCode),
                organisationId.hashCode),
            jobId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaptainsRecord')
          ..add('fullName', fullName)
          ..add('phone', phone)
          ..add('dob', dob)
          ..add('gender', gender)
          ..add('photo', photo)
          ..add('email', email)
          ..add('createdDate', createdDate)
          ..add('pinCode', pinCode)
          ..add('area', area)
          ..add('state', state)
          ..add('district', district)
          ..add('aadhar', aadhar)
          ..add('panNumber', panNumber)
          ..add('accountName', accountName)
          ..add('accountNumber', accountNumber)
          ..add('bankName', bankName)
          ..add('ifscCode', ifscCode)
          ..add('referralCode', referralCode)
          ..add('recruitmentArea', recruitmentArea)
          ..add('tag', tag)
          ..add('userRef', userRef)
          ..add('organisationId', organisationId)
          ..add('jobId', jobId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CaptainsRecordBuilder
    implements Builder<CaptainsRecord, CaptainsRecordBuilder> {
  _$CaptainsRecord? _$v;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DateTime? _dob;
  DateTime? get dob => _$this._dob;
  set dob(DateTime? dob) => _$this._dob = dob;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

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

  String? _aadhar;
  String? get aadhar => _$this._aadhar;
  set aadhar(String? aadhar) => _$this._aadhar = aadhar;

  String? _panNumber;
  String? get panNumber => _$this._panNumber;
  set panNumber(String? panNumber) => _$this._panNumber = panNumber;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _ifscCode;
  String? get ifscCode => _$this._ifscCode;
  set ifscCode(String? ifscCode) => _$this._ifscCode = ifscCode;

  String? _referralCode;
  String? get referralCode => _$this._referralCode;
  set referralCode(String? referralCode) => _$this._referralCode = referralCode;

  String? _recruitmentArea;
  String? get recruitmentArea => _$this._recruitmentArea;
  set recruitmentArea(String? recruitmentArea) =>
      _$this._recruitmentArea = recruitmentArea;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _organisationId;
  DocumentReference<Object?>? get organisationId => _$this._organisationId;
  set organisationId(DocumentReference<Object?>? organisationId) =>
      _$this._organisationId = organisationId;

  ListBuilder<DocumentReference<Object?>>? _jobId;
  ListBuilder<DocumentReference<Object?>> get jobId =>
      _$this._jobId ??= new ListBuilder<DocumentReference<Object?>>();
  set jobId(ListBuilder<DocumentReference<Object?>>? jobId) =>
      _$this._jobId = jobId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CaptainsRecordBuilder() {
    CaptainsRecord._initializeBuilder(this);
  }

  CaptainsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullName = $v.fullName;
      _phone = $v.phone;
      _dob = $v.dob;
      _gender = $v.gender;
      _photo = $v.photo;
      _email = $v.email;
      _createdDate = $v.createdDate;
      _pinCode = $v.pinCode;
      _area = $v.area;
      _state = $v.state;
      _district = $v.district;
      _aadhar = $v.aadhar;
      _panNumber = $v.panNumber;
      _accountName = $v.accountName;
      _accountNumber = $v.accountNumber;
      _bankName = $v.bankName;
      _ifscCode = $v.ifscCode;
      _referralCode = $v.referralCode;
      _recruitmentArea = $v.recruitmentArea;
      _tag = $v.tag;
      _userRef = $v.userRef;
      _organisationId = $v.organisationId;
      _jobId = $v.jobId?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaptainsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaptainsRecord;
  }

  @override
  void update(void Function(CaptainsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaptainsRecord build() => _build();

  _$CaptainsRecord _build() {
    _$CaptainsRecord _$result;
    try {
      _$result = _$v ??
          new _$CaptainsRecord._(
              fullName: fullName,
              phone: phone,
              dob: dob,
              gender: gender,
              photo: photo,
              email: email,
              createdDate: createdDate,
              pinCode: pinCode,
              area: area,
              state: state,
              district: district,
              aadhar: aadhar,
              panNumber: panNumber,
              accountName: accountName,
              accountNumber: accountNumber,
              bankName: bankName,
              ifscCode: ifscCode,
              referralCode: referralCode,
              recruitmentArea: recruitmentArea,
              tag: tag,
              userRef: userRef,
              organisationId: organisationId,
              jobId: _jobId?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jobId';
        _jobId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CaptainsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
