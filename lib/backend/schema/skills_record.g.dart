// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SkillsRecord> _$skillsRecordSerializer =
    new _$SkillsRecordSerializer();

class _$SkillsRecordSerializer implements StructuredSerializer<SkillsRecord> {
  @override
  final Iterable<Type> types = const [SkillsRecord, _$SkillsRecord];
  @override
  final String wireName = 'SkillsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SkillsRecord object,
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
    value = object.experienceYears;
    if (value != null) {
      result
        ..add('experience_years')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.primarySkill;
    if (value != null) {
      result
        ..add('primary_skill')
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
  SkillsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillsRecordBuilder();

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
        case 'experience_years':
          result.experienceYears = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primary_skill':
          result.primarySkill = serializers.deserialize(value,
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

class _$SkillsRecord extends SkillsRecord {
  @override
  final String? skillName;
  @override
  final String? experienceLevel;
  @override
  final String? experienceYears;
  @override
  final String? primarySkill;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SkillsRecord([void Function(SkillsRecordBuilder)? updates]) =>
      (new SkillsRecordBuilder()..update(updates))._build();

  _$SkillsRecord._(
      {this.skillName,
      this.experienceLevel,
      this.experienceYears,
      this.primarySkill,
      this.ffRef})
      : super._();

  @override
  SkillsRecord rebuild(void Function(SkillsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillsRecordBuilder toBuilder() => new SkillsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillsRecord &&
        skillName == other.skillName &&
        experienceLevel == other.experienceLevel &&
        experienceYears == other.experienceYears &&
        primarySkill == other.primarySkill &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, skillName.hashCode), experienceLevel.hashCode),
                experienceYears.hashCode),
            primarySkill.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillsRecord')
          ..add('skillName', skillName)
          ..add('experienceLevel', experienceLevel)
          ..add('experienceYears', experienceYears)
          ..add('primarySkill', primarySkill)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SkillsRecordBuilder
    implements Builder<SkillsRecord, SkillsRecordBuilder> {
  _$SkillsRecord? _$v;

  String? _skillName;
  String? get skillName => _$this._skillName;
  set skillName(String? skillName) => _$this._skillName = skillName;

  String? _experienceLevel;
  String? get experienceLevel => _$this._experienceLevel;
  set experienceLevel(String? experienceLevel) =>
      _$this._experienceLevel = experienceLevel;

  String? _experienceYears;
  String? get experienceYears => _$this._experienceYears;
  set experienceYears(String? experienceYears) =>
      _$this._experienceYears = experienceYears;

  String? _primarySkill;
  String? get primarySkill => _$this._primarySkill;
  set primarySkill(String? primarySkill) => _$this._primarySkill = primarySkill;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SkillsRecordBuilder() {
    SkillsRecord._initializeBuilder(this);
  }

  SkillsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillName = $v.skillName;
      _experienceLevel = $v.experienceLevel;
      _experienceYears = $v.experienceYears;
      _primarySkill = $v.primarySkill;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillsRecord;
  }

  @override
  void update(void Function(SkillsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillsRecord build() => _build();

  _$SkillsRecord _build() {
    final _$result = _$v ??
        new _$SkillsRecord._(
            skillName: skillName,
            experienceLevel: experienceLevel,
            experienceYears: experienceYears,
            primarySkill: primarySkill,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
