// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_worker_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobWorkerRecord> _$jobWorkerRecordSerializer =
    new _$JobWorkerRecordSerializer();

class _$JobWorkerRecordSerializer
    implements StructuredSerializer<JobWorkerRecord> {
  @override
  final Iterable<Type> types = const [JobWorkerRecord, _$JobWorkerRecord];
  @override
  final String wireName = 'JobWorkerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobWorkerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.appliedDate;
    if (value != null) {
      result
        ..add('applied_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.applicationStatus;
    if (value != null) {
      result
        ..add('application_status')
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
    value = object.workerId;
    if (value != null) {
      result
        ..add('worker_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
    value = object.experienceLevel;
    if (value != null) {
      result
        ..add('experience_level')
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
    value = object.organisationName;
    if (value != null) {
      result
        ..add('organisation_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobName;
    if (value != null) {
      result
        ..add('job_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orgName;
    if (value != null) {
      result
        ..add('org_name')
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
    value = object.orgReference;
    if (value != null) {
      result
        ..add('org_reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.jobReference;
    if (value != null) {
      result
        ..add('job_reference')
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
  JobWorkerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobWorkerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'applied_date':
          result.appliedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'application_status':
          result.applicationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_id':
          result.workerId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'worker_name':
          result.workerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'experience_level':
          result.experienceLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'worker_image':
          result.workerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organisation_name':
          result.organisationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_name':
          result.jobName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'org_name':
          result.orgName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'key_skill':
          result.keySkill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'org_reference':
          result.orgReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'job_reference':
          result.jobReference = serializers.deserialize(value,
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

class _$JobWorkerRecord extends JobWorkerRecord {
  @override
  final DateTime? appliedDate;
  @override
  final String? applicationStatus;
  @override
  final String? comments;
  @override
  final DocumentReference<Object?>? workerId;
  @override
  final String? workerName;
  @override
  final String? gender;
  @override
  final String? experienceLevel;
  @override
  final String? workerImage;
  @override
  final String? organisationName;
  @override
  final String? jobName;
  @override
  final String? orgName;
  @override
  final String? keySkill;
  @override
  final DocumentReference<Object?>? orgReference;
  @override
  final DocumentReference<Object?>? jobReference;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$JobWorkerRecord([void Function(JobWorkerRecordBuilder)? updates]) =>
      (new JobWorkerRecordBuilder()..update(updates))._build();

  _$JobWorkerRecord._(
      {this.appliedDate,
      this.applicationStatus,
      this.comments,
      this.workerId,
      this.workerName,
      this.gender,
      this.experienceLevel,
      this.workerImage,
      this.organisationName,
      this.jobName,
      this.orgName,
      this.keySkill,
      this.orgReference,
      this.jobReference,
      this.ffRef})
      : super._();

  @override
  JobWorkerRecord rebuild(void Function(JobWorkerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobWorkerRecordBuilder toBuilder() =>
      new JobWorkerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobWorkerRecord &&
        appliedDate == other.appliedDate &&
        applicationStatus == other.applicationStatus &&
        comments == other.comments &&
        workerId == other.workerId &&
        workerName == other.workerName &&
        gender == other.gender &&
        experienceLevel == other.experienceLevel &&
        workerImage == other.workerImage &&
        organisationName == other.organisationName &&
        jobName == other.jobName &&
        orgName == other.orgName &&
        keySkill == other.keySkill &&
        orgReference == other.orgReference &&
        jobReference == other.jobReference &&
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
                                                                appliedDate
                                                                    .hashCode),
                                                            applicationStatus
                                                                .hashCode),
                                                        comments.hashCode),
                                                    workerId.hashCode),
                                                workerName.hashCode),
                                            gender.hashCode),
                                        experienceLevel.hashCode),
                                    workerImage.hashCode),
                                organisationName.hashCode),
                            jobName.hashCode),
                        orgName.hashCode),
                    keySkill.hashCode),
                orgReference.hashCode),
            jobReference.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobWorkerRecord')
          ..add('appliedDate', appliedDate)
          ..add('applicationStatus', applicationStatus)
          ..add('comments', comments)
          ..add('workerId', workerId)
          ..add('workerName', workerName)
          ..add('gender', gender)
          ..add('experienceLevel', experienceLevel)
          ..add('workerImage', workerImage)
          ..add('organisationName', organisationName)
          ..add('jobName', jobName)
          ..add('orgName', orgName)
          ..add('keySkill', keySkill)
          ..add('orgReference', orgReference)
          ..add('jobReference', jobReference)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class JobWorkerRecordBuilder
    implements Builder<JobWorkerRecord, JobWorkerRecordBuilder> {
  _$JobWorkerRecord? _$v;

  DateTime? _appliedDate;
  DateTime? get appliedDate => _$this._appliedDate;
  set appliedDate(DateTime? appliedDate) => _$this._appliedDate = appliedDate;

  String? _applicationStatus;
  String? get applicationStatus => _$this._applicationStatus;
  set applicationStatus(String? applicationStatus) =>
      _$this._applicationStatus = applicationStatus;

  String? _comments;
  String? get comments => _$this._comments;
  set comments(String? comments) => _$this._comments = comments;

  DocumentReference<Object?>? _workerId;
  DocumentReference<Object?>? get workerId => _$this._workerId;
  set workerId(DocumentReference<Object?>? workerId) =>
      _$this._workerId = workerId;

  String? _workerName;
  String? get workerName => _$this._workerName;
  set workerName(String? workerName) => _$this._workerName = workerName;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _experienceLevel;
  String? get experienceLevel => _$this._experienceLevel;
  set experienceLevel(String? experienceLevel) =>
      _$this._experienceLevel = experienceLevel;

  String? _workerImage;
  String? get workerImage => _$this._workerImage;
  set workerImage(String? workerImage) => _$this._workerImage = workerImage;

  String? _organisationName;
  String? get organisationName => _$this._organisationName;
  set organisationName(String? organisationName) =>
      _$this._organisationName = organisationName;

  String? _jobName;
  String? get jobName => _$this._jobName;
  set jobName(String? jobName) => _$this._jobName = jobName;

  String? _orgName;
  String? get orgName => _$this._orgName;
  set orgName(String? orgName) => _$this._orgName = orgName;

  String? _keySkill;
  String? get keySkill => _$this._keySkill;
  set keySkill(String? keySkill) => _$this._keySkill = keySkill;

  DocumentReference<Object?>? _orgReference;
  DocumentReference<Object?>? get orgReference => _$this._orgReference;
  set orgReference(DocumentReference<Object?>? orgReference) =>
      _$this._orgReference = orgReference;

  DocumentReference<Object?>? _jobReference;
  DocumentReference<Object?>? get jobReference => _$this._jobReference;
  set jobReference(DocumentReference<Object?>? jobReference) =>
      _$this._jobReference = jobReference;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  JobWorkerRecordBuilder() {
    JobWorkerRecord._initializeBuilder(this);
  }

  JobWorkerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appliedDate = $v.appliedDate;
      _applicationStatus = $v.applicationStatus;
      _comments = $v.comments;
      _workerId = $v.workerId;
      _workerName = $v.workerName;
      _gender = $v.gender;
      _experienceLevel = $v.experienceLevel;
      _workerImage = $v.workerImage;
      _organisationName = $v.organisationName;
      _jobName = $v.jobName;
      _orgName = $v.orgName;
      _keySkill = $v.keySkill;
      _orgReference = $v.orgReference;
      _jobReference = $v.jobReference;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobWorkerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobWorkerRecord;
  }

  @override
  void update(void Function(JobWorkerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobWorkerRecord build() => _build();

  _$JobWorkerRecord _build() {
    final _$result = _$v ??
        new _$JobWorkerRecord._(
            appliedDate: appliedDate,
            applicationStatus: applicationStatus,
            comments: comments,
            workerId: workerId,
            workerName: workerName,
            gender: gender,
            experienceLevel: experienceLevel,
            workerImage: workerImage,
            organisationName: organisationName,
            jobName: jobName,
            orgName: orgName,
            keySkill: keySkill,
            orgReference: orgReference,
            jobReference: jobReference,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
