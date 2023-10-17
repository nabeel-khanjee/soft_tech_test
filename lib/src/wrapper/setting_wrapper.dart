
class SettingsPreferanceWrapper {
  SettingsPreferanceWrapper({
    String? cacheSignature,
    bool? status,
    int? code,
    String? message,
    Data? data,
  }) {
    _cacheSignature = cacheSignature;
    _status = status;
    _code = code;
    _message = message;
    _data = data;
  }

  SettingsPreferanceWrapper.fromJson(dynamic json) {
    _cacheSignature = json['cache_signature'];
    _status = json['status'];
    _code = json['code'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _cacheSignature;
  bool? _status;
  int? _code;
  String? _message;
  Data? _data;

  String? get cacheSignature => _cacheSignature;
  bool? get status => _status;
  int? get code => _code;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cache_signature'] = _cacheSignature;
    map['status'] = _status;
    map['code'] = _code;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}


class Data {
  Data({
    Settings? settings,
    String? topBarText
  }) {
    _settings = settings;
    _topBarText= topBarText;
  }

  Data.fromJson(dynamic json) {
    _settings = json['settings'] != null ? Settings.fromJson(json['settings']) : null;
_topBarText =json['top_bar_text'];
    
  }
  
  String ? _topBarText;
  
  Settings? _settings;

String ? get topBarText=> _topBarText;

  Settings? get settings => _settings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_settings != null) {
      map['settings'] = _settings?.toJson();

    }
    return map;
  }
}


class Settings {
  Settings({
    String? cancellationTiming,
    String? accountNumber,
    String? accountTitle,
    String? bank,
    String? whatsappNumber,
    String? branch,
    String? iban,
    String? bankDetailText,
    String? promotionText,
    String? promotionLink,
    String? copyright,
    String? newsletterFooterDescription,
    String? facebookLink,
    String? instagramLink,
    String? youtubeLink,
    String? copyrightUr,
    String? newsletterFooterDescriptionUr,
    String? promotionTextUr,
    String? promotionLinkUr,
    String? twitterLink,
    String? lindedinLink,
  }) {
    _cancellationTiming = cancellationTiming;
    _accountNumber = accountNumber;
    _accountTitle = accountTitle;
    _bank = bank;
    _whatsappNumber = whatsappNumber;
    _branch = branch;
    _iban = iban;
    _bankDetailText = bankDetailText;
    _promotionText = promotionText;
    _promotionLink = promotionLink;
    _copyright = copyright;
    _newsletterFooterDescription = newsletterFooterDescription;
    _facebookLink = facebookLink;
    _instagramLink = instagramLink;
    _youtubeLink = youtubeLink;
    _copyrightUr = copyrightUr;
    _newsletterFooterDescriptionUr = newsletterFooterDescriptionUr;
    _promotionTextUr = promotionTextUr;
    _promotionLinkUr = promotionLinkUr;
    _twitterLink = twitterLink;
    _lindedinLink = lindedinLink;
  }

  Settings.fromJson(dynamic json) {
    _cancellationTiming = json['cancellation_timing'];
    _accountNumber = json['account_number'];
    _accountTitle = json['account_title'];
    _bank = json['bank'];
    _whatsappNumber = json['whatsapp_number'];
    _branch = json['branch'];
    _iban = json['iban'];
    _bankDetailText = json['bank_detail_text'];
    _promotionText = json['promotion_text'];
    _promotionLink = json['promotion_link'];
    _copyright = json['copyright'];
    _newsletterFooterDescription = json['newsletter_footer_description'];
    _facebookLink = json['facebook_link'];
    _instagramLink = json['instagram_link'];
    _youtubeLink = json['youtube_link'];
    _copyrightUr = json['copyright_ur'];
    _newsletterFooterDescriptionUr = json['newsletter_footer_description_ur'];
    _promotionTextUr = json['promotion_text_ur'];
    _promotionLinkUr = json['promotion_link_ur'];
    _twitterLink = json['twitter_link'];
    _lindedinLink = json['lindedin_link'];
  }
  String? _cancellationTiming;
  String? _accountNumber;
  String? _accountTitle;
  String? _bank;
  String? _whatsappNumber;
  String? _branch;
  String? _iban;
  String? _bankDetailText;
  String? _promotionText;
  String? _promotionLink;
  String? _copyright;
  String? _newsletterFooterDescription;
  String? _facebookLink;
  String? _instagramLink;
  String? _youtubeLink;
  String? _copyrightUr;
  String? _newsletterFooterDescriptionUr;
  String? _promotionTextUr;
  String? _promotionLinkUr;
  String? _twitterLink;
  String? _lindedinLink;

  String? get cancellationTiming => _cancellationTiming;
  String? get accountNumber => _accountNumber;
  String? get accountTitle => _accountTitle;
  String? get bank => _bank;
  String? get whatsappNumber => _whatsappNumber;
  String? get branch => _branch;
  String? get iban => _iban;
  String? get bankDetailText => _bankDetailText;
  String? get promotionText => _promotionText;
  String? get promotionLink => _promotionLink;
  String? get copyright => _copyright;
  String? get newsletterFooterDescription => _newsletterFooterDescription;
  String? get facebookLink => _facebookLink;
  String? get instagramLink => _instagramLink;
  String? get youtubeLink => _youtubeLink;
  String? get copyrightUr => _copyrightUr;
  String? get newsletterFooterDescriptionUr => _newsletterFooterDescriptionUr;
  String? get promotionTextUr => _promotionTextUr;
  String? get promotionLinkUr => _promotionLinkUr;
  String? get twitterLink => _twitterLink;
  String? get lindedinLink => _lindedinLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cancellation_timing'] = _cancellationTiming;
    map['account_number'] = _accountNumber;
    map['account_title'] = _accountTitle;
    map['bank'] = _bank;
    map['whatsapp_number'] = _whatsappNumber;
    map['branch'] = _branch;
    map['iban'] = _iban;
    map['bank_detail_text'] = _bankDetailText;
    map['promotion_text'] = _promotionText;
    map['promotion_link'] = _promotionLink;
    map['copyright'] = _copyright;
    map['newsletter_footer_description'] = _newsletterFooterDescription;
    map['facebook_link'] = _facebookLink;
    map['instagram_link'] = _instagramLink;
    map['youtube_link'] = _youtubeLink;
    map['copyright_ur'] = _copyrightUr;
    map['newsletter_footer_description_ur'] = _newsletterFooterDescriptionUr;
    map['promotion_text_ur'] = _promotionTextUr;
    map['promotion_link_ur'] = _promotionLinkUr;
    map['twitter_link'] = _twitterLink;
    map['lindedin_link'] = _lindedinLink;
    return map;
  }
}
