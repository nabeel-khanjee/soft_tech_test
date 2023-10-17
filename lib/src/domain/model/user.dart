import 'package:softtech_test/src/domain/model/cities_res_wrapper.dart';

/// id : 4
/// name : null
/// phone : "03062459936"
/// email : ""
/// image : ""
/// gender : "male"
/// height : ""
/// weight : ""
/// network : "Ufone"
/// birth_date : ""
/// is_subscribed : false
/// status : true
/// language : ""
/// is_sign_up : true
/// role : {"id":2,"name":"User","slug":"user","translations":"en"}
/// city : null
/// parent : null
/// doctor_detail : {"id":2,"doctor_id":4,"prefix":null,"experience_year":6,
/// "pmc_no":"female","badge":null,"about":"xdcxc xdcvsdcvszxdc zzscs",
/// "waiting_time":null,"collaborations":null,"consultation_duration":null,
/// "is_physical_consultancy":true,"is_video_consultancy":true,
/// "is_voice_consultancy":true}
/// doctor_services : null
/// doctor_specialities : null
/// doctor_educations : null
/// doctor_clinics : null
/// total_reviews : 0
/// review_count : 0

class UserModel {
  UserModel({
    int? id,
    dynamic name,
    String? phone,
    String? email,
    String? image,
    String? gender,
    String? height,
    String? weight,
    String? network,
    String? birthDate,
    bool? isSubscribed,
    bool? status,
    String? language,
    bool? isSignUp,
    bool? isSocialLogin,
    City? city,
    dynamic parent,
    DoctorDetail? doctorDetail,
    dynamic doctorServices,
    dynamic doctorSpecialities,
    dynamic doctorEducations,
    dynamic doctorClinics,
    int? totalReviews,
    int? reviewCount,
    String? joiningDate,
    String? accessToken,
    int? freeTrial,
  }) {
    _id = id;
    _freeTrial = freeTrial;
    _accessToken = accessToken;
    _name = name;
    _phone = phone;
    _email = email;
    _image = image;
    _gender = gender;
    _height = height;
    _weight = weight;
    _network = network;
    _birthDate = birthDate;
    _isSubscribed = isSubscribed;
    _status = status;
    _language = language;
    _isSignUp = isSignUp;
    _isSocialLogin = isSocialLogin;
    _city = city;
    _parent = parent;
    _doctorDetail = doctorDetail;
    _doctorServices = doctorServices;
    _doctorSpecialities = doctorSpecialities;
    _doctorEducations = doctorEducations;
    _doctorClinics = doctorClinics;
    _totalReviews = totalReviews;
    _reviewCount = reviewCount;
    _joiningDate = joiningDate;
  }

  UserModel.fromJson(
    dynamic json,
  ) {
    _id = json['id'];
    _accessToken =
        // getIt<AppCubit>().user != null
        //     ? getIt<AppCubit>().user!._accessToken
        //     :
        json['access_token'];
    _name = json['name'];
    _phone = json['phone'];
    _email = json['email'];
    _image = json['image'];
    _gender = json['gender'];
    _height = json['height'];
    _weight = json['weight'];
    _network = json['network'];
    _birthDate = json['birth_date'];
    _isSubscribed = json['is_subscribed'];
    _status = json['status'];
    _language = json['language'];
    _isSignUp = json['is_sign_up'];
    _isSocialLogin = json['is_social_login'];
    _city = json['city'] != null ? City.fromJson(json['city']) : null;
    _parent = json['parent'];
    _doctorDetail = json['doctor_detail'] != null
        ? DoctorDetail.fromJson(json['doctor_detail'])
        : null;
    _doctorServices = json['doctor_services'];
    _doctorSpecialities = json['doctor_specialities'];
    _doctorEducations = json['doctor_educations'];
    _doctorClinics = json['doctor_clinics'];
    _totalReviews = json['total_reviews'];
    _reviewCount = json['review_count'];
    _joiningDate = json['joining_date'];
    _freeTrial = json['trial_consultation'];
  }

  int? _id;
  dynamic _name;
  int? _freeTrial;
  String? _accessToken;
  String? _phone;
  String? _email;
  String? _image;
  String? _gender;
  String? _height;
  String? _weight;
  String? _network;
  String? _birthDate;
  bool? _isSubscribed;
  bool? _status;
  String? _language;
  bool? _isSignUp;
  bool? _isSocialLogin;
  City? _city;
  dynamic _parent;
  DoctorDetail? _doctorDetail;
  dynamic _doctorServices;
  dynamic _doctorSpecialities;
  dynamic _doctorEducations;
  dynamic _doctorClinics;
  int? _totalReviews;
  int? _reviewCount;
  String? _joiningDate;

  int? get id => _id;

  dynamic get name => _name;

  int? get freeTrial => _freeTrial;

  String? get phone => _phone;
  String? get accessToken => _accessToken;

  String? get email => _email;

  String? get image => _image;

  String? get gender => _gender;

  String? get height => _height;

  String? get weight => _weight;

  String? get network => _network;

  String? get birthDate => _birthDate;

  bool? get isSubscribed => _isSubscribed;

  set isUserSubscribed(bool isSubscribed) => _isSubscribed = isSubscribed;

  set setUserName(String name) => _name = name;
  set setEmail(String email) => _email = email;

  bool? get status => _status;

  String? get language => _language;

  bool? get isSignUp => _isSignUp;
  bool? get isSocialLogin => _isSocialLogin;

  City? get city => _city;

  dynamic get parent => _parent;

  DoctorDetail? get doctorDetail => _doctorDetail;

  dynamic get doctorServices => _doctorServices;

  dynamic get doctorSpecialities => _doctorSpecialities;

  dynamic get doctorEducations => _doctorEducations;

  dynamic get doctorClinics => _doctorClinics;

  int? get totalReviews => _totalReviews;

  int? get reviewCount => _reviewCount;

  String? get joiningDate => _joiningDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['trial_consultation'] = _freeTrial;
    map['name'] = _name;
    map['access_token'] = _accessToken;
    map['phone'] = _phone;
    map['email'] = _email;
    map['image'] = _image;
    map['gender'] = _gender;
    map['height'] = _height;
    map['weight'] = _weight;
    map['network'] = _network;
    map['birth_date'] = _birthDate;
    map['is_subscribed'] = _isSubscribed;
    map['status'] = _status;
    map['language'] = _language;
    map['is_sign_up'] = _isSignUp;
    map['is_social_login'] = _isSocialLogin;
    map['city'] = _city?.toJson();
    map['parent'] = _parent;
    if (_doctorDetail != null) {
      map['doctor_detail'] = _doctorDetail?.toJson();
    }
    map['doctor_services'] = _doctorServices;
    map['doctor_specialities'] = _doctorSpecialities;
    map['doctor_educations'] = _doctorEducations;
    map['doctor_clinics'] = _doctorClinics;
    map['total_reviews'] = _totalReviews;
    map['review_count'] = _reviewCount;
    map['joining_date'] = _joiningDate;
    return map;
  }
}

/// id : 2
/// doctor_id : 4
/// prefix : null
/// experience_year : 6
/// pmc_no : "female"
/// badge : null
/// about : "xdcxc xdcvsdcvszxdc zzscs"
/// waiting_time : null
/// collaborations : null
/// consultation_duration : null
/// is_physical_consultancy : true
/// is_video_consultancy : true
/// is_voice_consultancy : true

class DoctorDetail {
  DoctorDetail({
    int? id,
    int? doctorId,
    dynamic prefix,
    int? experienceYear,
    String? pmcNo,
    dynamic badge,
    String? about,
    dynamic waitingTime,
    dynamic collaborations,
    dynamic consultationDuration,
    bool? isPhysicalConsultancy,
    bool? isVideoConsultancy,
    bool? isVoiceConsultancy,
  }) {
    _id = id;
    _doctorId = doctorId;
    _prefix = prefix;
    _experienceYear = experienceYear;
    _pmcNo = pmcNo;
    _badge = badge;
    _about = about;
    _waitingTime = waitingTime;
    _collaborations = collaborations;
    _consultationDuration = consultationDuration;
    _isPhysicalConsultancy = isPhysicalConsultancy;
    _isVideoConsultancy = isVideoConsultancy;
    _isVoiceConsultancy = isVoiceConsultancy;
  }

  DoctorDetail.fromJson(dynamic json) {
    _id = json['id'];
    _doctorId = json['doctor_id'];
    _prefix = json['prefix'];
    _experienceYear = json['experience_year'];
    _pmcNo = json['pmc_no'];
    _badge = json['badge'];
    _about = json['about'];
    _waitingTime = json['waiting_time'];
    _collaborations = json['collaborations'];
    _consultationDuration = json['consultation_duration'];
    _isPhysicalConsultancy = json['is_physical_consultancy'];
    _isVideoConsultancy = json['is_video_consultancy'];
    _isVoiceConsultancy = json['is_voice_consultancy'];
  }

  int? _id;
  int? _doctorId;
  dynamic _prefix;
  int? _experienceYear;
  String? _pmcNo;
  dynamic _badge;
  String? _about;
  dynamic _waitingTime;
  dynamic _collaborations;
  dynamic _consultationDuration;
  bool? _isPhysicalConsultancy;
  bool? _isVideoConsultancy;
  bool? _isVoiceConsultancy;

  int? get id => _id;

  int? get doctorId => _doctorId;

  dynamic get prefix => _prefix;

  int? get experienceYear => _experienceYear;

  String? get pmcNo => _pmcNo;

  dynamic get badge => _badge;

  String? get about => _about;

  dynamic get waitingTime => _waitingTime;

  dynamic get collaborations => _collaborations;

  dynamic get consultationDuration => _consultationDuration;

  bool? get isPhysicalConsultancy => _isPhysicalConsultancy;

  bool? get isVideoConsultancy => _isVideoConsultancy;

  bool? get isVoiceConsultancy => _isVoiceConsultancy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['doctor_id'] = _doctorId;
    map['prefix'] = _prefix;
    map['experience_year'] = _experienceYear;
    map['pmc_no'] = _pmcNo;
    map['badge'] = _badge;
    map['about'] = _about;
    map['waiting_time'] = _waitingTime;
    map['collaborations'] = _collaborations;
    map['consultation_duration'] = _consultationDuration;
    map['is_physical_consultancy'] = _isPhysicalConsultancy;
    map['is_video_consultancy'] = _isVideoConsultancy;
    map['is_voice_consultancy'] = _isVoiceConsultancy;
    return map;
  }
}
