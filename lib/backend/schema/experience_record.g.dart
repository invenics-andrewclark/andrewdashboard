// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExperienceRecord> _$experienceRecordSerializer =
    new _$ExperienceRecordSerializer();

class _$ExperienceRecordSerializer
    implements StructuredSerializer<ExperienceRecord> {
  @override
  final Iterable<Type> types = const [ExperienceRecord, _$ExperienceRecord];
  @override
  final String wireName = 'ExperienceRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ExperienceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.companyName;
    if (value != null) {
      result
        ..add('company_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobTitle;
    if (value != null) {
      result
        ..add('job_title')
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
    value = object.startDate;
    if (value != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ExperienceRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExperienceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'company_name':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_title':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primary_skill':
          result.primarySkill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ExperienceRecord extends ExperienceRecord {
  @override
  final String? companyName;
  @override
  final String? jobTitle;
  @override
  final String? primarySkill;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExperienceRecord(
          [void Function(ExperienceRecordBuilder)? updates]) =>
      (new ExperienceRecordBuilder()..update(updates))._build();

  _$ExperienceRecord._(
      {this.companyName,
      this.jobTitle,
      this.primarySkill,
      this.startDate,
      this.endDate,
      this.ffRef})
      : super._();

  @override
  ExperienceRecord rebuild(void Function(ExperienceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExperienceRecordBuilder toBuilder() =>
      new ExperienceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExperienceRecord &&
        companyName == other.companyName &&
        jobTitle == other.jobTitle &&
        primarySkill == other.primarySkill &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, companyName.hashCode), jobTitle.hashCode),
                    primarySkill.hashCode),
                startDate.hashCode),
            endDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExperienceRecord')
          ..add('companyName', companyName)
          ..add('jobTitle', jobTitle)
          ..add('primarySkill', primarySkill)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExperienceRecordBuilder
    implements Builder<ExperienceRecord, ExperienceRecordBuilder> {
  _$ExperienceRecord? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _jobTitle;
  String? get jobTitle => _$this._jobTitle;
  set jobTitle(String? jobTitle) => _$this._jobTitle = jobTitle;

  String? _primarySkill;
  String? get primarySkill => _$this._primarySkill;
  set primarySkill(String? primarySkill) => _$this._primarySkill = primarySkill;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExperienceRecordBuilder() {
    ExperienceRecord._initializeBuilder(this);
  }

  ExperienceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _jobTitle = $v.jobTitle;
      _primarySkill = $v.primarySkill;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExperienceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExperienceRecord;
  }

  @override
  void update(void Function(ExperienceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExperienceRecord build() => _build();

  _$ExperienceRecord _build() {
    final _$result = _$v ??
        new _$ExperienceRecord._(
            companyName: companyName,
            jobTitle: jobTitle,
            primarySkill: primarySkill,
            startDate: startDate,
            endDate: endDate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
