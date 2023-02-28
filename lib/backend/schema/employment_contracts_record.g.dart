// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employment_contracts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmploymentContractsRecord> _$employmentContractsRecordSerializer =
    new _$EmploymentContractsRecordSerializer();

class _$EmploymentContractsRecordSerializer
    implements StructuredSerializer<EmploymentContractsRecord> {
  @override
  final Iterable<Type> types = const [
    EmploymentContractsRecord,
    _$EmploymentContractsRecord
  ];
  @override
  final String wireName = 'EmploymentContractsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EmploymentContractsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.contractSigned;
    if (value != null) {
      result
        ..add('contract_signed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.modeOfSalary;
    if (value != null) {
      result
        ..add('mode_of_salary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobReference;
    if (value != null) {
      result
        ..add('job_reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
    value = object.workerName;
    if (value != null) {
      result
        ..add('worker_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workerGender;
    if (value != null) {
      result
        ..add('worker_gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workerSkill;
    if (value != null) {
      result
        ..add('worker_skill')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workerSkillExperience;
    if (value != null) {
      result
        ..add('worker_skill_experience')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workerImage;
    if (value != null) {
      result
        ..add('worker_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organisationReference;
    if (value != null) {
      result
        ..add('organisation_reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.workerReference;
    if (value != null) {
      result
        ..add('worker_reference')
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
  EmploymentContractsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmploymentContractsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'contract_signed':
          result.contractSigned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mode_of_salary':
          result.modeOfSalary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_reference':
          result.jobReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'worker_name':
          result.workerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_gender':
          result.workerGender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_skill':
          result.workerSkill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_skill_experience':
          result.workerSkillExperience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_image':
          result.workerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organisation_reference':
          result.organisationReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'worker_reference':
          result.workerReference = serializers.deserialize(value,
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

class _$EmploymentContractsRecord extends EmploymentContractsRecord {
  @override
  final bool? contractSigned;
  @override
  final int? salary;
  @override
  final String? modeOfSalary;
  @override
  final DocumentReference<Object?>? jobReference;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? workerName;
  @override
  final String? workerGender;
  @override
  final String? workerSkill;
  @override
  final String? workerSkillExperience;
  @override
  final String? workerImage;
  @override
  final DocumentReference<Object?>? organisationReference;
  @override
  final DocumentReference<Object?>? workerReference;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmploymentContractsRecord(
          [void Function(EmploymentContractsRecordBuilder)? updates]) =>
      (new EmploymentContractsRecordBuilder()..update(updates))._build();

  _$EmploymentContractsRecord._(
      {this.contractSigned,
      this.salary,
      this.modeOfSalary,
      this.jobReference,
      this.startDate,
      this.endDate,
      this.workerName,
      this.workerGender,
      this.workerSkill,
      this.workerSkillExperience,
      this.workerImage,
      this.organisationReference,
      this.workerReference,
      this.ffRef})
      : super._();

  @override
  EmploymentContractsRecord rebuild(
          void Function(EmploymentContractsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmploymentContractsRecordBuilder toBuilder() =>
      new EmploymentContractsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmploymentContractsRecord &&
        contractSigned == other.contractSigned &&
        salary == other.salary &&
        modeOfSalary == other.modeOfSalary &&
        jobReference == other.jobReference &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        workerName == other.workerName &&
        workerGender == other.workerGender &&
        workerSkill == other.workerSkill &&
        workerSkillExperience == other.workerSkillExperience &&
        workerImage == other.workerImage &&
        organisationReference == other.organisationReference &&
        workerReference == other.workerReference &&
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
                                                            0,
                                                            contractSigned
                                                                .hashCode),
                                                        salary.hashCode),
                                                    modeOfSalary.hashCode),
                                                jobReference.hashCode),
                                            startDate.hashCode),
                                        endDate.hashCode),
                                    workerName.hashCode),
                                workerGender.hashCode),
                            workerSkill.hashCode),
                        workerSkillExperience.hashCode),
                    workerImage.hashCode),
                organisationReference.hashCode),
            workerReference.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmploymentContractsRecord')
          ..add('contractSigned', contractSigned)
          ..add('salary', salary)
          ..add('modeOfSalary', modeOfSalary)
          ..add('jobReference', jobReference)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('workerName', workerName)
          ..add('workerGender', workerGender)
          ..add('workerSkill', workerSkill)
          ..add('workerSkillExperience', workerSkillExperience)
          ..add('workerImage', workerImage)
          ..add('organisationReference', organisationReference)
          ..add('workerReference', workerReference)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmploymentContractsRecordBuilder
    implements
        Builder<EmploymentContractsRecord, EmploymentContractsRecordBuilder> {
  _$EmploymentContractsRecord? _$v;

  bool? _contractSigned;
  bool? get contractSigned => _$this._contractSigned;
  set contractSigned(bool? contractSigned) =>
      _$this._contractSigned = contractSigned;

  int? _salary;
  int? get salary => _$this._salary;
  set salary(int? salary) => _$this._salary = salary;

  String? _modeOfSalary;
  String? get modeOfSalary => _$this._modeOfSalary;
  set modeOfSalary(String? modeOfSalary) => _$this._modeOfSalary = modeOfSalary;

  DocumentReference<Object?>? _jobReference;
  DocumentReference<Object?>? get jobReference => _$this._jobReference;
  set jobReference(DocumentReference<Object?>? jobReference) =>
      _$this._jobReference = jobReference;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  String? _workerName;
  String? get workerName => _$this._workerName;
  set workerName(String? workerName) => _$this._workerName = workerName;

  String? _workerGender;
  String? get workerGender => _$this._workerGender;
  set workerGender(String? workerGender) => _$this._workerGender = workerGender;

  String? _workerSkill;
  String? get workerSkill => _$this._workerSkill;
  set workerSkill(String? workerSkill) => _$this._workerSkill = workerSkill;

  String? _workerSkillExperience;
  String? get workerSkillExperience => _$this._workerSkillExperience;
  set workerSkillExperience(String? workerSkillExperience) =>
      _$this._workerSkillExperience = workerSkillExperience;

  String? _workerImage;
  String? get workerImage => _$this._workerImage;
  set workerImage(String? workerImage) => _$this._workerImage = workerImage;

  DocumentReference<Object?>? _organisationReference;
  DocumentReference<Object?>? get organisationReference =>
      _$this._organisationReference;
  set organisationReference(
          DocumentReference<Object?>? organisationReference) =>
      _$this._organisationReference = organisationReference;

  DocumentReference<Object?>? _workerReference;
  DocumentReference<Object?>? get workerReference => _$this._workerReference;
  set workerReference(DocumentReference<Object?>? workerReference) =>
      _$this._workerReference = workerReference;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmploymentContractsRecordBuilder() {
    EmploymentContractsRecord._initializeBuilder(this);
  }

  EmploymentContractsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contractSigned = $v.contractSigned;
      _salary = $v.salary;
      _modeOfSalary = $v.modeOfSalary;
      _jobReference = $v.jobReference;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _workerName = $v.workerName;
      _workerGender = $v.workerGender;
      _workerSkill = $v.workerSkill;
      _workerSkillExperience = $v.workerSkillExperience;
      _workerImage = $v.workerImage;
      _organisationReference = $v.organisationReference;
      _workerReference = $v.workerReference;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmploymentContractsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmploymentContractsRecord;
  }

  @override
  void update(void Function(EmploymentContractsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmploymentContractsRecord build() => _build();

  _$EmploymentContractsRecord _build() {
    final _$result = _$v ??
        new _$EmploymentContractsRecord._(
            contractSigned: contractSigned,
            salary: salary,
            modeOfSalary: modeOfSalary,
            jobReference: jobReference,
            startDate: startDate,
            endDate: endDate,
            workerName: workerName,
            workerGender: workerGender,
            workerSkill: workerSkill,
            workerSkillExperience: workerSkillExperience,
            workerImage: workerImage,
            organisationReference: organisationReference,
            workerReference: workerReference,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
