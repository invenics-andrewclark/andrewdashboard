// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobsRecord> _$jobsRecordSerializer = new _$JobsRecordSerializer();

class _$JobsRecordSerializer implements StructuredSerializer<JobsRecord> {
  @override
  final Iterable<Type> types = const [JobsRecord, _$JobsRecord];
  @override
  final String wireName = 'JobsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobsRecord object,
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
    value = object.jobTitle;
    if (value != null) {
      result
        ..add('job_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobDescription;
    if (value != null) {
      result
        ..add('job_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minQualification;
    if (value != null) {
      result
        ..add('min_qualification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minSalary;
    if (value != null) {
      result
        ..add('min_salary')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxSalary;
    if (value != null) {
      result
        ..add('max_salary')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.modeOfSalary;
    if (value != null) {
      result
        ..add('mode_of_salary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfVacancies;
    if (value != null) {
      result
        ..add('number_of_vacancies')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minAge;
    if (value != null) {
      result
        ..add('min_age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxAge;
    if (value != null) {
      result
        ..add('max_age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.jobImage;
    if (value != null) {
      result
        ..add('job_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobCategory;
    if (value != null) {
      result
        ..add('job_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workingHours;
    if (value != null) {
      result
        ..add('working_hours')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.jobSubCategory;
    if (value != null) {
      result
        ..add('job_sub_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.primarySkill;
    if (value != null) {
      result
        ..add('primary_skill')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.primarySkillLevel;
    if (value != null) {
      result
        ..add('primary_skill_level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minExperience;
    if (value != null) {
      result
        ..add('min_experience')
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
    value = object.organisationRef;
    if (value != null) {
      result
        ..add('organisation_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.facilities;
    if (value != null) {
      result
        ..add('facilities')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.isComplete;
    if (value != null) {
      result
        ..add('is_complete')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  JobsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobsRecordBuilder();

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
        case 'job_title':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_description':
          result.jobDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_qualification':
          result.minQualification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_salary':
          result.minSalary = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'max_salary':
          result.maxSalary = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mode_of_salary':
          result.modeOfSalary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_vacancies':
          result.numberOfVacancies = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_age':
          result.minAge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'max_age':
          result.maxAge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'job_image':
          result.jobImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_category':
          result.jobCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'working_hours':
          result.workingHours = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'job_sub_category':
          result.jobSubCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
        case 'primary_skill':
          result.primarySkill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primary_skill_level':
          result.primarySkillLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_experience':
          result.minExperience = serializers.deserialize(value,
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
        case 'organisation_ref':
          result.organisationRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'facilities':
          result.facilities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'is_complete':
          result.isComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$JobsRecord extends JobsRecord {
  @override
  final String? organisationName;
  @override
  final String? jobTitle;
  @override
  final String? jobDescription;
  @override
  final String? minQualification;
  @override
  final int? minSalary;
  @override
  final int? maxSalary;
  @override
  final String? modeOfSalary;
  @override
  final int? numberOfVacancies;
  @override
  final String? gender;
  @override
  final int? minAge;
  @override
  final int? maxAge;
  @override
  final String? jobImage;
  @override
  final String? jobCategory;
  @override
  final int? workingHours;
  @override
  final String? jobSubCategory;
  @override
  final String? pinCode;
  @override
  final String? area;
  @override
  final String? state;
  @override
  final String? district;
  @override
  final String? primarySkill;
  @override
  final String? primarySkillLevel;
  @override
  final String? minExperience;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final DocumentReference<Object?>? organisationRef;
  @override
  final BuiltList<String>? facilities;
  @override
  final bool? isComplete;
  @override
  final DocumentReference<Object?>? jobReference;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$JobsRecord([void Function(JobsRecordBuilder)? updates]) =>
      (new JobsRecordBuilder()..update(updates))._build();

  _$JobsRecord._(
      {this.organisationName,
      this.jobTitle,
      this.jobDescription,
      this.minQualification,
      this.minSalary,
      this.maxSalary,
      this.modeOfSalary,
      this.numberOfVacancies,
      this.gender,
      this.minAge,
      this.maxAge,
      this.jobImage,
      this.jobCategory,
      this.workingHours,
      this.jobSubCategory,
      this.pinCode,
      this.area,
      this.state,
      this.district,
      this.primarySkill,
      this.primarySkillLevel,
      this.minExperience,
      this.startDate,
      this.endDate,
      this.organisationRef,
      this.facilities,
      this.isComplete,
      this.jobReference,
      this.ffRef})
      : super._();

  @override
  JobsRecord rebuild(void Function(JobsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobsRecordBuilder toBuilder() => new JobsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobsRecord &&
        organisationName == other.organisationName &&
        jobTitle == other.jobTitle &&
        jobDescription == other.jobDescription &&
        minQualification == other.minQualification &&
        minSalary == other.minSalary &&
        maxSalary == other.maxSalary &&
        modeOfSalary == other.modeOfSalary &&
        numberOfVacancies == other.numberOfVacancies &&
        gender == other.gender &&
        minAge == other.minAge &&
        maxAge == other.maxAge &&
        jobImage == other.jobImage &&
        jobCategory == other.jobCategory &&
        workingHours == other.workingHours &&
        jobSubCategory == other.jobSubCategory &&
        pinCode == other.pinCode &&
        area == other.area &&
        state == other.state &&
        district == other.district &&
        primarySkill == other.primarySkill &&
        primarySkillLevel == other.primarySkillLevel &&
        minExperience == other.minExperience &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        organisationRef == other.organisationRef &&
        facilities == other.facilities &&
        isComplete == other.isComplete &&
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
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, organisationName.hashCode), jobTitle.hashCode), jobDescription.hashCode), minQualification.hashCode), minSalary.hashCode), maxSalary.hashCode), modeOfSalary.hashCode), numberOfVacancies.hashCode), gender.hashCode), minAge.hashCode),
                                                                                maxAge.hashCode),
                                                                            jobImage.hashCode),
                                                                        jobCategory.hashCode),
                                                                    workingHours.hashCode),
                                                                jobSubCategory.hashCode),
                                                            pinCode.hashCode),
                                                        area.hashCode),
                                                    state.hashCode),
                                                district.hashCode),
                                            primarySkill.hashCode),
                                        primarySkillLevel.hashCode),
                                    minExperience.hashCode),
                                startDate.hashCode),
                            endDate.hashCode),
                        organisationRef.hashCode),
                    facilities.hashCode),
                isComplete.hashCode),
            jobReference.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobsRecord')
          ..add('organisationName', organisationName)
          ..add('jobTitle', jobTitle)
          ..add('jobDescription', jobDescription)
          ..add('minQualification', minQualification)
          ..add('minSalary', minSalary)
          ..add('maxSalary', maxSalary)
          ..add('modeOfSalary', modeOfSalary)
          ..add('numberOfVacancies', numberOfVacancies)
          ..add('gender', gender)
          ..add('minAge', minAge)
          ..add('maxAge', maxAge)
          ..add('jobImage', jobImage)
          ..add('jobCategory', jobCategory)
          ..add('workingHours', workingHours)
          ..add('jobSubCategory', jobSubCategory)
          ..add('pinCode', pinCode)
          ..add('area', area)
          ..add('state', state)
          ..add('district', district)
          ..add('primarySkill', primarySkill)
          ..add('primarySkillLevel', primarySkillLevel)
          ..add('minExperience', minExperience)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('organisationRef', organisationRef)
          ..add('facilities', facilities)
          ..add('isComplete', isComplete)
          ..add('jobReference', jobReference)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class JobsRecordBuilder implements Builder<JobsRecord, JobsRecordBuilder> {
  _$JobsRecord? _$v;

  String? _organisationName;
  String? get organisationName => _$this._organisationName;
  set organisationName(String? organisationName) =>
      _$this._organisationName = organisationName;

  String? _jobTitle;
  String? get jobTitle => _$this._jobTitle;
  set jobTitle(String? jobTitle) => _$this._jobTitle = jobTitle;

  String? _jobDescription;
  String? get jobDescription => _$this._jobDescription;
  set jobDescription(String? jobDescription) =>
      _$this._jobDescription = jobDescription;

  String? _minQualification;
  String? get minQualification => _$this._minQualification;
  set minQualification(String? minQualification) =>
      _$this._minQualification = minQualification;

  int? _minSalary;
  int? get minSalary => _$this._minSalary;
  set minSalary(int? minSalary) => _$this._minSalary = minSalary;

  int? _maxSalary;
  int? get maxSalary => _$this._maxSalary;
  set maxSalary(int? maxSalary) => _$this._maxSalary = maxSalary;

  String? _modeOfSalary;
  String? get modeOfSalary => _$this._modeOfSalary;
  set modeOfSalary(String? modeOfSalary) => _$this._modeOfSalary = modeOfSalary;

  int? _numberOfVacancies;
  int? get numberOfVacancies => _$this._numberOfVacancies;
  set numberOfVacancies(int? numberOfVacancies) =>
      _$this._numberOfVacancies = numberOfVacancies;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  int? _minAge;
  int? get minAge => _$this._minAge;
  set minAge(int? minAge) => _$this._minAge = minAge;

  int? _maxAge;
  int? get maxAge => _$this._maxAge;
  set maxAge(int? maxAge) => _$this._maxAge = maxAge;

  String? _jobImage;
  String? get jobImage => _$this._jobImage;
  set jobImage(String? jobImage) => _$this._jobImage = jobImage;

  String? _jobCategory;
  String? get jobCategory => _$this._jobCategory;
  set jobCategory(String? jobCategory) => _$this._jobCategory = jobCategory;

  int? _workingHours;
  int? get workingHours => _$this._workingHours;
  set workingHours(int? workingHours) => _$this._workingHours = workingHours;

  String? _jobSubCategory;
  String? get jobSubCategory => _$this._jobSubCategory;
  set jobSubCategory(String? jobSubCategory) =>
      _$this._jobSubCategory = jobSubCategory;

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

  String? _primarySkill;
  String? get primarySkill => _$this._primarySkill;
  set primarySkill(String? primarySkill) => _$this._primarySkill = primarySkill;

  String? _primarySkillLevel;
  String? get primarySkillLevel => _$this._primarySkillLevel;
  set primarySkillLevel(String? primarySkillLevel) =>
      _$this._primarySkillLevel = primarySkillLevel;

  String? _minExperience;
  String? get minExperience => _$this._minExperience;
  set minExperience(String? minExperience) =>
      _$this._minExperience = minExperience;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  DocumentReference<Object?>? _organisationRef;
  DocumentReference<Object?>? get organisationRef => _$this._organisationRef;
  set organisationRef(DocumentReference<Object?>? organisationRef) =>
      _$this._organisationRef = organisationRef;

  ListBuilder<String>? _facilities;
  ListBuilder<String> get facilities =>
      _$this._facilities ??= new ListBuilder<String>();
  set facilities(ListBuilder<String>? facilities) =>
      _$this._facilities = facilities;

  bool? _isComplete;
  bool? get isComplete => _$this._isComplete;
  set isComplete(bool? isComplete) => _$this._isComplete = isComplete;

  DocumentReference<Object?>? _jobReference;
  DocumentReference<Object?>? get jobReference => _$this._jobReference;
  set jobReference(DocumentReference<Object?>? jobReference) =>
      _$this._jobReference = jobReference;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  JobsRecordBuilder() {
    JobsRecord._initializeBuilder(this);
  }

  JobsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organisationName = $v.organisationName;
      _jobTitle = $v.jobTitle;
      _jobDescription = $v.jobDescription;
      _minQualification = $v.minQualification;
      _minSalary = $v.minSalary;
      _maxSalary = $v.maxSalary;
      _modeOfSalary = $v.modeOfSalary;
      _numberOfVacancies = $v.numberOfVacancies;
      _gender = $v.gender;
      _minAge = $v.minAge;
      _maxAge = $v.maxAge;
      _jobImage = $v.jobImage;
      _jobCategory = $v.jobCategory;
      _workingHours = $v.workingHours;
      _jobSubCategory = $v.jobSubCategory;
      _pinCode = $v.pinCode;
      _area = $v.area;
      _state = $v.state;
      _district = $v.district;
      _primarySkill = $v.primarySkill;
      _primarySkillLevel = $v.primarySkillLevel;
      _minExperience = $v.minExperience;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _organisationRef = $v.organisationRef;
      _facilities = $v.facilities?.toBuilder();
      _isComplete = $v.isComplete;
      _jobReference = $v.jobReference;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobsRecord;
  }

  @override
  void update(void Function(JobsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobsRecord build() => _build();

  _$JobsRecord _build() {
    _$JobsRecord _$result;
    try {
      _$result = _$v ??
          new _$JobsRecord._(
              organisationName: organisationName,
              jobTitle: jobTitle,
              jobDescription: jobDescription,
              minQualification: minQualification,
              minSalary: minSalary,
              maxSalary: maxSalary,
              modeOfSalary: modeOfSalary,
              numberOfVacancies: numberOfVacancies,
              gender: gender,
              minAge: minAge,
              maxAge: maxAge,
              jobImage: jobImage,
              jobCategory: jobCategory,
              workingHours: workingHours,
              jobSubCategory: jobSubCategory,
              pinCode: pinCode,
              area: area,
              state: state,
              district: district,
              primarySkill: primarySkill,
              primarySkillLevel: primarySkillLevel,
              minExperience: minExperience,
              startDate: startDate,
              endDate: endDate,
              organisationRef: organisationRef,
              facilities: _facilities?.build(),
              isComplete: isComplete,
              jobReference: jobReference,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'facilities';
        _facilities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JobsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
