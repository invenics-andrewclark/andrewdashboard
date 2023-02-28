// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplicationsStruct> _$applicationsStructSerializer =
    new _$ApplicationsStructSerializer();

class _$ApplicationsStructSerializer
    implements StructuredSerializer<ApplicationsStruct> {
  @override
  final Iterable<Type> types = const [ApplicationsStruct, _$ApplicationsStruct];
  @override
  final String wireName = 'ApplicationsStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApplicationsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.applicationStatus;
    if (value != null) {
      result
        ..add('application_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appliedOn;
    if (value != null) {
      result
        ..add('applied_on')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workerName;
    if (value != null) {
      result
        ..add('worker_name')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.keySkill;
    if (value != null) {
      result
        ..add('key_skill')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experience;
    if (value != null) {
      result
        ..add('experience')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workerId;
    if (value != null) {
      result
        ..add('worker_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ApplicationsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplicationsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'application_status':
          result.applicationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'applied_on':
          result.appliedOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_name':
          result.workerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'key_skill':
          result.keySkill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'experience':
          result.experience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_id':
          result.workerId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ApplicationsStruct extends ApplicationsStruct {
  @override
  final String? applicationStatus;
  @override
  final String? appliedOn;
  @override
  final String? comments;
  @override
  final String? workerName;
  @override
  final String? gender;
  @override
  final String? location;
  @override
  final String? keySkill;
  @override
  final String? experience;
  @override
  final DocumentReference<Object?>? workerId;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ApplicationsStruct(
          [void Function(ApplicationsStructBuilder)? updates]) =>
      (new ApplicationsStructBuilder()..update(updates))._build();

  _$ApplicationsStruct._(
      {this.applicationStatus,
      this.appliedOn,
      this.comments,
      this.workerName,
      this.gender,
      this.location,
      this.keySkill,
      this.experience,
      this.workerId,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ApplicationsStruct', 'firestoreUtilData');
  }

  @override
  ApplicationsStruct rebuild(
          void Function(ApplicationsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationsStructBuilder toBuilder() =>
      new ApplicationsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationsStruct &&
        applicationStatus == other.applicationStatus &&
        appliedOn == other.appliedOn &&
        comments == other.comments &&
        workerName == other.workerName &&
        gender == other.gender &&
        location == other.location &&
        keySkill == other.keySkill &&
        experience == other.experience &&
        workerId == other.workerId &&
        firestoreUtilData == other.firestoreUtilData;
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
                                    $jc($jc(0, applicationStatus.hashCode),
                                        appliedOn.hashCode),
                                    comments.hashCode),
                                workerName.hashCode),
                            gender.hashCode),
                        location.hashCode),
                    keySkill.hashCode),
                experience.hashCode),
            workerId.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationsStruct')
          ..add('applicationStatus', applicationStatus)
          ..add('appliedOn', appliedOn)
          ..add('comments', comments)
          ..add('workerName', workerName)
          ..add('gender', gender)
          ..add('location', location)
          ..add('keySkill', keySkill)
          ..add('experience', experience)
          ..add('workerId', workerId)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ApplicationsStructBuilder
    implements Builder<ApplicationsStruct, ApplicationsStructBuilder> {
  _$ApplicationsStruct? _$v;

  String? _applicationStatus;
  String? get applicationStatus => _$this._applicationStatus;
  set applicationStatus(String? applicationStatus) =>
      _$this._applicationStatus = applicationStatus;

  String? _appliedOn;
  String? get appliedOn => _$this._appliedOn;
  set appliedOn(String? appliedOn) => _$this._appliedOn = appliedOn;

  String? _comments;
  String? get comments => _$this._comments;
  set comments(String? comments) => _$this._comments = comments;

  String? _workerName;
  String? get workerName => _$this._workerName;
  set workerName(String? workerName) => _$this._workerName = workerName;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _keySkill;
  String? get keySkill => _$this._keySkill;
  set keySkill(String? keySkill) => _$this._keySkill = keySkill;

  String? _experience;
  String? get experience => _$this._experience;
  set experience(String? experience) => _$this._experience = experience;

  DocumentReference<Object?>? _workerId;
  DocumentReference<Object?>? get workerId => _$this._workerId;
  set workerId(DocumentReference<Object?>? workerId) =>
      _$this._workerId = workerId;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ApplicationsStructBuilder() {
    ApplicationsStruct._initializeBuilder(this);
  }

  ApplicationsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationStatus = $v.applicationStatus;
      _appliedOn = $v.appliedOn;
      _comments = $v.comments;
      _workerName = $v.workerName;
      _gender = $v.gender;
      _location = $v.location;
      _keySkill = $v.keySkill;
      _experience = $v.experience;
      _workerId = $v.workerId;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationsStruct;
  }

  @override
  void update(void Function(ApplicationsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationsStruct build() => _build();

  _$ApplicationsStruct _build() {
    final _$result = _$v ??
        new _$ApplicationsStruct._(
            applicationStatus: applicationStatus,
            appliedOn: appliedOn,
            comments: comments,
            workerName: workerName,
            gender: gender,
            location: location,
            keySkill: keySkill,
            experience: experience,
            workerId: workerId,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ApplicationsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
