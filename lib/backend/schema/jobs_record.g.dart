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
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
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
    value = object.jobImage;
    if (value != null) {
      result
        ..add('job_image')
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
    value = object.primarySkill;
    if (value != null) {
      result
        ..add('primary_skill')
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
    value = object.jobTitle;
    if (value != null) {
      result
        ..add('job_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modeOfSalary;
    if (value != null) {
      result
        ..add('mode_of_salary')
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
    value = object.district;
    if (value != null) {
      result
        ..add('district')
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
    value = object.minExperience;
    if (value != null) {
      result
        ..add('min_experience')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobApplicationCollection;
    if (value != null) {
      result
        ..add('job_application_collection')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationList;
    if (value != null) {
      result
        ..add('application_list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfVacancies;
    if (value != null) {
      result
        ..add('number_of_vacancies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workingHours;
    if (value != null) {
      result
        ..add('working_hours')
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
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minSalary;
    if (value != null) {
      result
        ..add('min_salary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxSalary;
    if (value != null) {
      result
        ..add('max_salary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minAge;
    if (value != null) {
      result
        ..add('min_age')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxAge;
    if (value != null) {
      result
        ..add('max_age')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.food;
    if (value != null) {
      result
        ..add('food')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lodging;
    if (value != null) {
      result
        ..add('lodging')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transportation;
    if (value != null) {
      result
        ..add('transportation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medical;
    if (value != null) {
      result
        ..add('medical')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobSubCateg;
    if (value != null) {
      result
        ..add('job_sub_categ')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orgRefId;
    if (value != null) {
      result
        ..add('org_ref_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.minQualification;
    if (value != null) {
      result
        ..add('min_qualification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobRef;
    if (value != null) {
      result
        ..add('job_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.applications;
    if (value != null) {
      result
        ..add('applications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ApplicationsStruct)])));
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
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_description':
          result.jobDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_image':
          result.jobImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primary_skill_level':
          result.primarySkillLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primary_skill':
          result.primarySkill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organisation_name':
          result.organisationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_title':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mode_of_salary':
          result.modeOfSalary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_category':
          result.jobCategory = serializers.deserialize(value,
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
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_experience':
          result.minExperience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_application_collection':
          result.jobApplicationCollection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'application_list':
          result.applicationList = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_vacancies':
          result.numberOfVacancies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'working_hours':
          result.workingHours = serializers.deserialize(value,
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
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_salary':
          result.minSalary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'max_salary':
          result.maxSalary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_age':
          result.minAge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'max_age':
          result.maxAge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'food':
          result.food = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lodging':
          result.lodging = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transportation':
          result.transportation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medical':
          result.medical = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_sub_categ':
          result.jobSubCateg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'org_ref_id':
          result.orgRefId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'min_qualification':
          result.minQualification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job_ref':
          result.jobRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'applications':
          result.applications.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ApplicationsStruct)]))!
              as BuiltList<Object?>);
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
  final String? salary;
  @override
  final String? jobDescription;
  @override
  final String? jobImage;
  @override
  final String? primarySkillLevel;
  @override
  final String? primarySkill;
  @override
  final String? organisationName;
  @override
  final String? jobTitle;
  @override
  final String? modeOfSalary;
  @override
  final String? jobCategory;
  @override
  final String? pinCode;
  @override
  final String? area;
  @override
  final String? district;
  @override
  final String? state;
  @override
  final String? minExperience;
  @override
  final String? jobApplicationCollection;
  @override
  final String? applicationList;
  @override
  final String? numberOfVacancies;
  @override
  final String? workingHours;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? gender;
  @override
  final String? minSalary;
  @override
  final String? maxSalary;
  @override
  final String? minAge;
  @override
  final String? maxAge;
  @override
  final String? food;
  @override
  final String? lodging;
  @override
  final String? transportation;
  @override
  final String? medical;
  @override
  final String? jobSubCateg;
  @override
  final DocumentReference<Object?>? orgRefId;
  @override
  final String? minQualification;
  @override
  final DocumentReference<Object?>? jobRef;
  @override
  final BuiltList<ApplicationsStruct>? applications;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$JobsRecord([void Function(JobsRecordBuilder)? updates]) =>
      (new JobsRecordBuilder()..update(updates))._build();

  _$JobsRecord._(
      {this.salary,
      this.jobDescription,
      this.jobImage,
      this.primarySkillLevel,
      this.primarySkill,
      this.organisationName,
      this.jobTitle,
      this.modeOfSalary,
      this.jobCategory,
      this.pinCode,
      this.area,
      this.district,
      this.state,
      this.minExperience,
      this.jobApplicationCollection,
      this.applicationList,
      this.numberOfVacancies,
      this.workingHours,
      this.startDate,
      this.endDate,
      this.gender,
      this.minSalary,
      this.maxSalary,
      this.minAge,
      this.maxAge,
      this.food,
      this.lodging,
      this.transportation,
      this.medical,
      this.jobSubCateg,
      this.orgRefId,
      this.minQualification,
      this.jobRef,
      this.applications,
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
        salary == other.salary &&
        jobDescription == other.jobDescription &&
        jobImage == other.jobImage &&
        primarySkillLevel == other.primarySkillLevel &&
        primarySkill == other.primarySkill &&
        organisationName == other.organisationName &&
        jobTitle == other.jobTitle &&
        modeOfSalary == other.modeOfSalary &&
        jobCategory == other.jobCategory &&
        pinCode == other.pinCode &&
        area == other.area &&
        district == other.district &&
        state == other.state &&
        minExperience == other.minExperience &&
        jobApplicationCollection == other.jobApplicationCollection &&
        applicationList == other.applicationList &&
        numberOfVacancies == other.numberOfVacancies &&
        workingHours == other.workingHours &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        gender == other.gender &&
        minSalary == other.minSalary &&
        maxSalary == other.maxSalary &&
        minAge == other.minAge &&
        maxAge == other.maxAge &&
        food == other.food &&
        lodging == other.lodging &&
        transportation == other.transportation &&
        medical == other.medical &&
        jobSubCateg == other.jobSubCateg &&
        orgRefId == other.orgRefId &&
        minQualification == other.minQualification &&
        jobRef == other.jobRef &&
        applications == other.applications &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, salary.hashCode), jobDescription.hashCode), jobImage.hashCode), primarySkillLevel.hashCode), primarySkill.hashCode), organisationName.hashCode), jobTitle.hashCode), modeOfSalary.hashCode), jobCategory.hashCode), pinCode.hashCode), area.hashCode), district.hashCode), state.hashCode), minExperience.hashCode), jobApplicationCollection.hashCode), applicationList.hashCode),
                                                                                numberOfVacancies.hashCode),
                                                                            workingHours.hashCode),
                                                                        startDate.hashCode),
                                                                    endDate.hashCode),
                                                                gender.hashCode),
                                                            minSalary.hashCode),
                                                        maxSalary.hashCode),
                                                    minAge.hashCode),
                                                maxAge.hashCode),
                                            food.hashCode),
                                        lodging.hashCode),
                                    transportation.hashCode),
                                medical.hashCode),
                            jobSubCateg.hashCode),
                        orgRefId.hashCode),
                    minQualification.hashCode),
                jobRef.hashCode),
            applications.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobsRecord')
          ..add('salary', salary)
          ..add('jobDescription', jobDescription)
          ..add('jobImage', jobImage)
          ..add('primarySkillLevel', primarySkillLevel)
          ..add('primarySkill', primarySkill)
          ..add('organisationName', organisationName)
          ..add('jobTitle', jobTitle)
          ..add('modeOfSalary', modeOfSalary)
          ..add('jobCategory', jobCategory)
          ..add('pinCode', pinCode)
          ..add('area', area)
          ..add('district', district)
          ..add('state', state)
          ..add('minExperience', minExperience)
          ..add('jobApplicationCollection', jobApplicationCollection)
          ..add('applicationList', applicationList)
          ..add('numberOfVacancies', numberOfVacancies)
          ..add('workingHours', workingHours)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('gender', gender)
          ..add('minSalary', minSalary)
          ..add('maxSalary', maxSalary)
          ..add('minAge', minAge)
          ..add('maxAge', maxAge)
          ..add('food', food)
          ..add('lodging', lodging)
          ..add('transportation', transportation)
          ..add('medical', medical)
          ..add('jobSubCateg', jobSubCateg)
          ..add('orgRefId', orgRefId)
          ..add('minQualification', minQualification)
          ..add('jobRef', jobRef)
          ..add('applications', applications)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class JobsRecordBuilder implements Builder<JobsRecord, JobsRecordBuilder> {
  _$JobsRecord? _$v;

  String? _salary;
  String? get salary => _$this._salary;
  set salary(String? salary) => _$this._salary = salary;

  String? _jobDescription;
  String? get jobDescription => _$this._jobDescription;
  set jobDescription(String? jobDescription) =>
      _$this._jobDescription = jobDescription;

  String? _jobImage;
  String? get jobImage => _$this._jobImage;
  set jobImage(String? jobImage) => _$this._jobImage = jobImage;

  String? _primarySkillLevel;
  String? get primarySkillLevel => _$this._primarySkillLevel;
  set primarySkillLevel(String? primarySkillLevel) =>
      _$this._primarySkillLevel = primarySkillLevel;

  String? _primarySkill;
  String? get primarySkill => _$this._primarySkill;
  set primarySkill(String? primarySkill) => _$this._primarySkill = primarySkill;

  String? _organisationName;
  String? get organisationName => _$this._organisationName;
  set organisationName(String? organisationName) =>
      _$this._organisationName = organisationName;

  String? _jobTitle;
  String? get jobTitle => _$this._jobTitle;
  set jobTitle(String? jobTitle) => _$this._jobTitle = jobTitle;

  String? _modeOfSalary;
  String? get modeOfSalary => _$this._modeOfSalary;
  set modeOfSalary(String? modeOfSalary) => _$this._modeOfSalary = modeOfSalary;

  String? _jobCategory;
  String? get jobCategory => _$this._jobCategory;
  set jobCategory(String? jobCategory) => _$this._jobCategory = jobCategory;

  String? _pinCode;
  String? get pinCode => _$this._pinCode;
  set pinCode(String? pinCode) => _$this._pinCode = pinCode;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _minExperience;
  String? get minExperience => _$this._minExperience;
  set minExperience(String? minExperience) =>
      _$this._minExperience = minExperience;

  String? _jobApplicationCollection;
  String? get jobApplicationCollection => _$this._jobApplicationCollection;
  set jobApplicationCollection(String? jobApplicationCollection) =>
      _$this._jobApplicationCollection = jobApplicationCollection;

  String? _applicationList;
  String? get applicationList => _$this._applicationList;
  set applicationList(String? applicationList) =>
      _$this._applicationList = applicationList;

  String? _numberOfVacancies;
  String? get numberOfVacancies => _$this._numberOfVacancies;
  set numberOfVacancies(String? numberOfVacancies) =>
      _$this._numberOfVacancies = numberOfVacancies;

  String? _workingHours;
  String? get workingHours => _$this._workingHours;
  set workingHours(String? workingHours) => _$this._workingHours = workingHours;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _minSalary;
  String? get minSalary => _$this._minSalary;
  set minSalary(String? minSalary) => _$this._minSalary = minSalary;

  String? _maxSalary;
  String? get maxSalary => _$this._maxSalary;
  set maxSalary(String? maxSalary) => _$this._maxSalary = maxSalary;

  String? _minAge;
  String? get minAge => _$this._minAge;
  set minAge(String? minAge) => _$this._minAge = minAge;

  String? _maxAge;
  String? get maxAge => _$this._maxAge;
  set maxAge(String? maxAge) => _$this._maxAge = maxAge;

  String? _food;
  String? get food => _$this._food;
  set food(String? food) => _$this._food = food;

  String? _lodging;
  String? get lodging => _$this._lodging;
  set lodging(String? lodging) => _$this._lodging = lodging;

  String? _transportation;
  String? get transportation => _$this._transportation;
  set transportation(String? transportation) =>
      _$this._transportation = transportation;

  String? _medical;
  String? get medical => _$this._medical;
  set medical(String? medical) => _$this._medical = medical;

  String? _jobSubCateg;
  String? get jobSubCateg => _$this._jobSubCateg;
  set jobSubCateg(String? jobSubCateg) => _$this._jobSubCateg = jobSubCateg;

  DocumentReference<Object?>? _orgRefId;
  DocumentReference<Object?>? get orgRefId => _$this._orgRefId;
  set orgRefId(DocumentReference<Object?>? orgRefId) =>
      _$this._orgRefId = orgRefId;

  String? _minQualification;
  String? get minQualification => _$this._minQualification;
  set minQualification(String? minQualification) =>
      _$this._minQualification = minQualification;

  DocumentReference<Object?>? _jobRef;
  DocumentReference<Object?>? get jobRef => _$this._jobRef;
  set jobRef(DocumentReference<Object?>? jobRef) => _$this._jobRef = jobRef;

  ListBuilder<ApplicationsStruct>? _applications;
  ListBuilder<ApplicationsStruct> get applications =>
      _$this._applications ??= new ListBuilder<ApplicationsStruct>();
  set applications(ListBuilder<ApplicationsStruct>? applications) =>
      _$this._applications = applications;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  JobsRecordBuilder() {
    JobsRecord._initializeBuilder(this);
  }

  JobsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _salary = $v.salary;
      _jobDescription = $v.jobDescription;
      _jobImage = $v.jobImage;
      _primarySkillLevel = $v.primarySkillLevel;
      _primarySkill = $v.primarySkill;
      _organisationName = $v.organisationName;
      _jobTitle = $v.jobTitle;
      _modeOfSalary = $v.modeOfSalary;
      _jobCategory = $v.jobCategory;
      _pinCode = $v.pinCode;
      _area = $v.area;
      _district = $v.district;
      _state = $v.state;
      _minExperience = $v.minExperience;
      _jobApplicationCollection = $v.jobApplicationCollection;
      _applicationList = $v.applicationList;
      _numberOfVacancies = $v.numberOfVacancies;
      _workingHours = $v.workingHours;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _gender = $v.gender;
      _minSalary = $v.minSalary;
      _maxSalary = $v.maxSalary;
      _minAge = $v.minAge;
      _maxAge = $v.maxAge;
      _food = $v.food;
      _lodging = $v.lodging;
      _transportation = $v.transportation;
      _medical = $v.medical;
      _jobSubCateg = $v.jobSubCateg;
      _orgRefId = $v.orgRefId;
      _minQualification = $v.minQualification;
      _jobRef = $v.jobRef;
      _applications = $v.applications?.toBuilder();
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
              salary: salary,
              jobDescription: jobDescription,
              jobImage: jobImage,
              primarySkillLevel: primarySkillLevel,
              primarySkill: primarySkill,
              organisationName: organisationName,
              jobTitle: jobTitle,
              modeOfSalary: modeOfSalary,
              jobCategory: jobCategory,
              pinCode: pinCode,
              area: area,
              district: district,
              state: state,
              minExperience: minExperience,
              jobApplicationCollection: jobApplicationCollection,
              applicationList: applicationList,
              numberOfVacancies: numberOfVacancies,
              workingHours: workingHours,
              startDate: startDate,
              endDate: endDate,
              gender: gender,
              minSalary: minSalary,
              maxSalary: maxSalary,
              minAge: minAge,
              maxAge: maxAge,
              food: food,
              lodging: lodging,
              transportation: transportation,
              medical: medical,
              jobSubCateg: jobSubCateg,
              orgRefId: orgRefId,
              minQualification: minQualification,
              jobRef: jobRef,
              applications: _applications?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'applications';
        _applications?.build();
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
