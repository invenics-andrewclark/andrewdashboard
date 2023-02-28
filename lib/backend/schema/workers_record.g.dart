// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkersRecord> _$workersRecordSerializer =
    new _$WorkersRecordSerializer();

class _$WorkersRecordSerializer implements StructuredSerializer<WorkersRecord> {
  @override
  final Iterable<Type> types = const [WorkersRecord, _$WorkersRecord];
  @override
  final String wireName = 'WorkersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WorkersRecord object,
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
    value = object.highestQualification;
    if (value != null) {
      result
        ..add('highest_qualification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateAvailableFrom;
    if (value != null) {
      result
        ..add('date_available_from')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.jobWorkerId;
    if (value != null) {
      result
        ..add('job_worker_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
    value = object.isWorking;
    if (value != null) {
      result
        ..add('is_working')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.captainScoutRef;
    if (value != null) {
      result
        ..add('captain_scout_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  WorkersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkersRecordBuilder();

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
        case 'highest_qualification':
          result.highestQualification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_available_from':
          result.dateAvailableFrom = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'job_worker_id':
          result.jobWorkerId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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
        case 'is_working':
          result.isWorking = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'captain_scout_ref':
          result.captainScoutRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$WorkersRecord extends WorkersRecord {
  @override
  final String? fullName;
  @override
  final String? phone;
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
  final String? highestQualification;
  @override
  final DateTime? dateAvailableFrom;
  @override
  final DocumentReference<Object?>? jobWorkerId;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? organisationId;
  @override
  final bool? isWorking;
  @override
  final String? dob;
  @override
  final DocumentReference<Object?>? captainScoutRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkersRecord([void Function(WorkersRecordBuilder)? updates]) =>
      (new WorkersRecordBuilder()..update(updates))._build();

  _$WorkersRecord._(
      {this.fullName,
      this.phone,
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
      this.highestQualification,
      this.dateAvailableFrom,
      this.jobWorkerId,
      this.userRef,
      this.organisationId,
      this.isWorking,
      this.dob,
      this.captainScoutRef,
      this.ffRef})
      : super._();

  @override
  WorkersRecord rebuild(void Function(WorkersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkersRecordBuilder toBuilder() => new WorkersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkersRecord &&
        fullName == other.fullName &&
        phone == other.phone &&
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
        highestQualification == other.highestQualification &&
        dateAvailableFrom == other.dateAvailableFrom &&
        jobWorkerId == other.jobWorkerId &&
        userRef == other.userRef &&
        organisationId == other.organisationId &&
        isWorking == other.isWorking &&
        dob == other.dob &&
        captainScoutRef == other.captainScoutRef &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, fullName.hashCode), phone.hashCode), gender.hashCode), photo.hashCode), email.hashCode), createdDate.hashCode),
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
                                        highestQualification.hashCode),
                                    dateAvailableFrom.hashCode),
                                jobWorkerId.hashCode),
                            userRef.hashCode),
                        organisationId.hashCode),
                    isWorking.hashCode),
                dob.hashCode),
            captainScoutRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkersRecord')
          ..add('fullName', fullName)
          ..add('phone', phone)
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
          ..add('highestQualification', highestQualification)
          ..add('dateAvailableFrom', dateAvailableFrom)
          ..add('jobWorkerId', jobWorkerId)
          ..add('userRef', userRef)
          ..add('organisationId', organisationId)
          ..add('isWorking', isWorking)
          ..add('dob', dob)
          ..add('captainScoutRef', captainScoutRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkersRecordBuilder
    implements Builder<WorkersRecord, WorkersRecordBuilder> {
  _$WorkersRecord? _$v;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

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

  String? _highestQualification;
  String? get highestQualification => _$this._highestQualification;
  set highestQualification(String? highestQualification) =>
      _$this._highestQualification = highestQualification;

  DateTime? _dateAvailableFrom;
  DateTime? get dateAvailableFrom => _$this._dateAvailableFrom;
  set dateAvailableFrom(DateTime? dateAvailableFrom) =>
      _$this._dateAvailableFrom = dateAvailableFrom;

  DocumentReference<Object?>? _jobWorkerId;
  DocumentReference<Object?>? get jobWorkerId => _$this._jobWorkerId;
  set jobWorkerId(DocumentReference<Object?>? jobWorkerId) =>
      _$this._jobWorkerId = jobWorkerId;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _organisationId;
  DocumentReference<Object?>? get organisationId => _$this._organisationId;
  set organisationId(DocumentReference<Object?>? organisationId) =>
      _$this._organisationId = organisationId;

  bool? _isWorking;
  bool? get isWorking => _$this._isWorking;
  set isWorking(bool? isWorking) => _$this._isWorking = isWorking;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  DocumentReference<Object?>? _captainScoutRef;
  DocumentReference<Object?>? get captainScoutRef => _$this._captainScoutRef;
  set captainScoutRef(DocumentReference<Object?>? captainScoutRef) =>
      _$this._captainScoutRef = captainScoutRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkersRecordBuilder() {
    WorkersRecord._initializeBuilder(this);
  }

  WorkersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullName = $v.fullName;
      _phone = $v.phone;
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
      _highestQualification = $v.highestQualification;
      _dateAvailableFrom = $v.dateAvailableFrom;
      _jobWorkerId = $v.jobWorkerId;
      _userRef = $v.userRef;
      _organisationId = $v.organisationId;
      _isWorking = $v.isWorking;
      _dob = $v.dob;
      _captainScoutRef = $v.captainScoutRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkersRecord;
  }

  @override
  void update(void Function(WorkersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkersRecord build() => _build();

  _$WorkersRecord _build() {
    final _$result = _$v ??
        new _$WorkersRecord._(
            fullName: fullName,
            phone: phone,
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
            highestQualification: highestQualification,
            dateAvailableFrom: dateAvailableFrom,
            jobWorkerId: jobWorkerId,
            userRef: userRef,
            organisationId: organisationId,
            isWorking: isWorking,
            dob: dob,
            captainScoutRef: captainScoutRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
