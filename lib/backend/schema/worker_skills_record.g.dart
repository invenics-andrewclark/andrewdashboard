// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_skills_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkerSkillsRecord> _$workerSkillsRecordSerializer =
    new _$WorkerSkillsRecordSerializer();

class _$WorkerSkillsRecordSerializer
    implements StructuredSerializer<WorkerSkillsRecord> {
  @override
  final Iterable<Type> types = const [WorkerSkillsRecord, _$WorkerSkillsRecord];
  @override
  final String wireName = 'WorkerSkillsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WorkerSkillsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.skillName;
    if (value != null) {
      result
        ..add('skill_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experienceLevel;
    if (value != null) {
      result
        ..add('experience_level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPrimary;
    if (value != null) {
      result
        ..add('is_primary')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.experienceYears;
    if (value != null) {
      result
        ..add('experience_years')
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
  WorkerSkillsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkerSkillsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'skill_name':
          result.skillName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'experience_level':
          result.experienceLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_primary':
          result.isPrimary = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'experience_years':
          result.experienceYears = serializers.deserialize(value,
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

class _$WorkerSkillsRecord extends WorkerSkillsRecord {
  @override
  final String? skillName;
  @override
  final String? experienceLevel;
  @override
  final bool? isPrimary;
  @override
  final String? experienceYears;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkerSkillsRecord(
          [void Function(WorkerSkillsRecordBuilder)? updates]) =>
      (new WorkerSkillsRecordBuilder()..update(updates))._build();

  _$WorkerSkillsRecord._(
      {this.skillName,
      this.experienceLevel,
      this.isPrimary,
      this.experienceYears,
      this.ffRef})
      : super._();

  @override
  WorkerSkillsRecord rebuild(
          void Function(WorkerSkillsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkerSkillsRecordBuilder toBuilder() =>
      new WorkerSkillsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkerSkillsRecord &&
        skillName == other.skillName &&
        experienceLevel == other.experienceLevel &&
        isPrimary == other.isPrimary &&
        experienceYears == other.experienceYears &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, skillName.hashCode), experienceLevel.hashCode),
                isPrimary.hashCode),
            experienceYears.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkerSkillsRecord')
          ..add('skillName', skillName)
          ..add('experienceLevel', experienceLevel)
          ..add('isPrimary', isPrimary)
          ..add('experienceYears', experienceYears)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkerSkillsRecordBuilder
    implements Builder<WorkerSkillsRecord, WorkerSkillsRecordBuilder> {
  _$WorkerSkillsRecord? _$v;

  String? _skillName;
  String? get skillName => _$this._skillName;
  set skillName(String? skillName) => _$this._skillName = skillName;

  String? _experienceLevel;
  String? get experienceLevel => _$this._experienceLevel;
  set experienceLevel(String? experienceLevel) =>
      _$this._experienceLevel = experienceLevel;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  String? _experienceYears;
  String? get experienceYears => _$this._experienceYears;
  set experienceYears(String? experienceYears) =>
      _$this._experienceYears = experienceYears;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkerSkillsRecordBuilder() {
    WorkerSkillsRecord._initializeBuilder(this);
  }

  WorkerSkillsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillName = $v.skillName;
      _experienceLevel = $v.experienceLevel;
      _isPrimary = $v.isPrimary;
      _experienceYears = $v.experienceYears;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkerSkillsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkerSkillsRecord;
  }

  @override
  void update(void Function(WorkerSkillsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkerSkillsRecord build() => _build();

  _$WorkerSkillsRecord _build() {
    final _$result = _$v ??
        new _$WorkerSkillsRecord._(
            skillName: skillName,
            experienceLevel: experienceLevel,
            isPrimary: isPrimary,
            experienceYears: experienceYears,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
