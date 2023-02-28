import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'ta', 'ur'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? taText = '',
    String? urText = '',
  }) =>
      [enText, hiText, taText, urText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'hg38xv11': {
      'en': 'Enter your credentials to access your account.',
      'hi': 'स्वागत है, और नीचे अपने खाते तक पहुंचें।',
      'ta': 'வரவேற்கிறோம், கீழே உள்ள உங்கள் கணக்கை அணுகவும்.',
      'ur': 'خوش آمدید، اور نیچے اپنے اکاؤنٹ تک رسائی حاصل کریں۔',
    },
    'k9f7l4nt': {
      'en': 'Sign In',
      'hi': 'साइन इन करें',
      'ta': 'உள்நுழையவும்',
      'ur': 'سائن ان',
    },
    'iln56iwm': {
      'en': '',
      'hi': 'ईमेल पता',
      'ta': 'மின்னஞ்சல் முகவரி',
      'ur': 'ای میل اڈریس',
    },
    'yp39ekyy': {
      'en': 'Email Address',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'asfvlblu': {
      'en': '',
      'hi': 'पासवर्ड',
      'ta': 'கடவுச்சொல்',
      'ur': 'پاس ورڈ',
    },
    'kr3sgnw0': {
      'en': 'Password',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '9m0a1d6n': {
      'en': 'Sign In',
      'hi': 'साइन इन करें',
      'ta': 'உள்நுழையவும்',
      'ur': 'سائن ان',
    },
    '0r8t4eat': {
      'en': 'Forgot Password?',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'gdds3pa0': {
      'en': 'Sign Up',
      'hi': 'साइन अप करें',
      'ta': 'பதிவு செய்யவும்',
      'ur': 'سائن اپ',
    },
    'osu0i9jf': {
      'en': '',
      'hi': 'ईमेल पता',
      'ta': 'மின்னஞ்சல் முகவரி',
      'ur': 'ای میل اڈریس',
    },
    '3eksnf44': {
      'en': 'Email Address',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'qmufuubm': {
      'en': '',
      'hi': 'पासवर्ड',
      'ta': 'கடவுச்சொல்',
      'ur': 'پاس ورڈ',
    },
    '7b6wxw4b': {
      'en': 'Password',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'no1ntlls': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
      'ta': 'உங்கள் கணக்கை துவங்குங்கள்',
      'ur': 'اکاؤنٹ بنائیں',
    },
    'houhzb6v': {
      'en': 'Field is required',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    's8v0a5hy': {
      'en': 'Email address should be minimum 5 characters',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '4wo82b1e': {
      'en': 'email address is too long',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'w21iqcg0': {
      'en': 'Email seems to be invalid. Please check',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '7bsvoomv': {
      'en': 'Field is required',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'vyebgthd': {
      'en': 'Field is required',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '938u1yyy': {
      'en': 'Field is required',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // forgotPassword
  {
    's20e49ou': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    'qgfcbi0c': {
      'en': 'Forgot Password',
      'hi': 'पासवर्ड भूल गए',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா',
      'ur': 'پاسورڈ بھول گے',
    },
    'fjhybvst': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'hi':
          'हम आपको आपका पासवर्ड रीसेट करने के लिए एक लिंक के साथ एक ईमेल भेजेंगे, कृपया नीचे अपने खाते से संबद्ध ईमेल दर्ज करें।',
      'ta':
          'உங்கள் கடவுச்சொல்லை மீட்டமைக்க இணைப்புடன் கூடிய மின்னஞ்சலை உங்களுக்கு அனுப்புவோம், உங்கள் கணக்குடன் தொடர்புடைய மின்னஞ்சலை கீழே உள்ளிடவும்.',
      'ur':
          'ہم آپ کو اپنا پاس ورڈ دوبارہ ترتیب دینے کے لیے ایک لنک کے ساتھ ایک ای میل بھیجیں گے، براہ کرم نیچے اپنے اکاؤنٹ سے وابستہ ای میل درج کریں۔',
    },
    'ujc5xipx': {
      'en': '',
      'hi': 'आपका ईमेल पता...',
      'ta': 'உங்கள் மின்னஞ்சல் முகவரி...',
      'ur': 'آپ کا ای میل پتہ...',
    },
    'gegzfze4': {
      'en': 'Enter your email...',
      'hi': 'अपना ईमेल दर्ज करें...',
      'ta': 'மின்னஞ்சலை பதிவுசெய்...',
      'ur': 'اپنا ای میل درج کریں...',
    },
    '1njh17kf': {
      'en': 'Send Link',
      'hi': 'लिंक भेजें',
      'ta': 'இணைப்பை அனுப்பவும்',
      'ur': 'لنک بھیجیں۔',
    },
    '9a4bm91z': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // mainActivityTracker
  {
    'qivbgraj': {
      'en': 'My Jobs',
      'hi': 'मेरा काम',
      'ta': 'எனது பணிகள்',
      'ur': 'میرے کام',
    },
    'kvvcugxf': {
      'en': 'In Progress',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'uwyvo6wk': {
      'en': 'Duration',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    't2wjobrx': {
      'en': '- ',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xeqma55c': {
      'en': 'Issue #242952592',
      'hi': 'अंक #242952592',
      'ta': 'வெளியீடு #242952592',
      'ur': 'شمارہ نمبر 242952592',
    },
    'jflxt2qx': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'zi7hfryq': {
      'en': 'Andres Reynolds',
      'hi': 'एंड्रेस रेनॉल्ड्स',
      'ta': 'ஆண்ட்ரெஸ் ரெனால்ட்ஸ்',
      'ur': 'اینڈریس رینالڈز',
    },
    '8sjmfjjx': {
      'en': 'Due',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'uiqmsymo': {
      'en': 'Tuesday, 10:00am',
      'hi': 'मंगलवार, सुबह 10:00 बजे',
      'ta': 'செவ்வாய், காலை 10:00 மணி',
      'ur': 'منگل، صبح 10:00 بجے',
    },
    'iofpx15n': {
      'en': 'Not Started',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    '832adtr2': {
      'en': 'Start',
      'hi': 'शुरू',
      'ta': 'தொடங்கு',
      'ur': 'شروع کریں۔',
    },
    '1460lgka': {
      'en': 'Start Date:',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'wm00imuu': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'o0nbp5ga': {
      'en': 'In Progress',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'c8gv1fmj': {
      'en': 'Duration:',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    '5dian856': {
      'en': '- ',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'd4gw9qw0': {
      'en': 'Issue #242952592',
      'hi': 'अंक #242952592',
      'ta': 'வெளியீடு #242952592',
      'ur': 'شمارہ نمبر 242952592',
    },
    'zdrf3ikg': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    '6p1meot0': {
      'en': 'Andres Reynolds',
      'hi': 'एंड्रेस रेनॉल्ड्स',
      'ta': 'ஆண்ட்ரெஸ் ரெனால்ட்ஸ்',
      'ur': 'اینڈریس رینالڈز',
    },
    '86lis2jg': {
      'en': 'Due',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'rd23line': {
      'en': 'Tuesday, 10:00am',
      'hi': 'मंगलवार, सुबह 10:00 बजे',
      'ta': 'செவ்வாய், காலை 10:00 மணி',
      'ur': 'منگل، صبح 10:00 بجے',
    },
    'lqbva4ak': {
      'en': 'Complete',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'hkcnmvtg': {
      'en': 'Complete',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'htuk5fl0': {
      'en': 'End Date:',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'xe34smbh': {
      'en': 'My Tasks',
      'hi': 'मेरा काम',
      'ta': 'எனது பணிகள்',
      'ur': 'میرے کام',
    },
    '1rnio8vt': {
      'en': '(4)',
      'hi': '(4)',
      'ta': '(4)',
      'ur': '(4)',
    },
    '7ez5k4ic': {
      'en': 'Issue #242952592',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '69v0z5o9': {
      'en': 'Andres Reynolds',
      'hi': 'एंड्रेस रेनॉल्ड्स',
      'ta': 'ஆண்ட்ரெஸ் ரெனால்ட்ஸ்',
      'ur': 'اینڈریس رینالڈز',
    },
    'oopnhfx6': {
      'en': 'Due',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    '94bjya9e': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'sjx93r37': {
      'en': 'Tuesday, 10:00am',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'i2oud4oy': {
      'en': 'Issue #242952592',
      'hi': 'अंक #242952592',
      'ta': 'வெளியீடு #242952592',
      'ur': 'شمارہ نمبر 242952592',
    },
    '6z27sxtu': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'kvvayf1a': {
      'en': 'Andres Reynolds',
      'hi': 'एंड्रेस रेनॉल्ड्स',
      'ta': 'ஆண்ட்ரெஸ் ரெனால்ட்ஸ்',
      'ur': 'اینڈریس رینالڈز',
    },
    'y2umcbi9': {
      'en': 'Due',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'ut18klg9': {
      'en': 'Tuesday, 10:00am',
      'hi': 'मंगलवार, सुबह 10:00 बजे',
      'ta': 'செவ்வாய், காலை 10:00 மணி',
      'ur': 'منگل، صبح 10:00 بجے',
    },
    'rktf6kep': {
      'en': 'Not Started',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'mpiabjfr': {
      'en': 'Start',
      'hi': 'शुरू',
      'ta': 'தொடங்கு',
      'ur': 'شروع کریں۔',
    },
    'i1j0llq5': {
      'en': 'Start Date',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    '89oepmke': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    '05qe5qgv': {
      'en': 'In Progress',
      'hi': 'शुरू',
      'ta': 'தொடங்கு',
      'ur': 'شروع کریں۔',
    },
    'b8974iek': {
      'en': 'End Date',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'vpfyakh9': {
      'en': 'Issue #242952592',
      'hi': 'अंक #242952592',
      'ta': 'வெளியீடு #242952592',
      'ur': 'شمارہ نمبر 242952592',
    },
    '2jc6nxa6': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'z98yqioc': {
      'en': 'Andres Reynolds',
      'hi': 'एंड्रेस रेनॉल्ड्स',
      'ta': 'ஆண்ட்ரெஸ் ரெனால்ட்ஸ்',
      'ur': 'اینڈریس رینالڈز',
    },
    '6c511ygf': {
      'en': 'Due',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'z9zv51n7': {
      'en': 'Tuesday, 10:00am',
      'hi': 'मंगलवार, सुबह 10:00 बजे',
      'ta': 'செவ்வாய், காலை 10:00 மணி',
      'ur': 'منگل، صبح 10:00 بجے',
    },
    '310ik08p': {
      'en': 'Completed',
      'hi': 'पूरा हुआ',
      'ta': 'நிறைவு',
      'ur': 'مکمل',
    },
    '4r1xiwhr': {
      'en': 'Complete',
      'hi': 'शुरू',
      'ta': 'தொடங்கு',
      'ur': 'شروع کریں۔',
    },
    '9bhl3dkx': {
      'en': 'End Date',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    '6mv3j0ec': {
      'en': 'Activity',
      'hi': 'ट्रैकर',
      'ta': 'டிராக்கர்',
      'ur': 'ٹریکر',
    },
  },
  // captainWorkers
  {
    'khf5zkji': {
      'en': 'Organisation',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '9s048496': {
      'en': 'Associated Workers',
      'hi': 'कार्य',
      'ta': 'பணிகள்',
      'ur': 'کام',
    },
    '3rwjcoju': {
      'en': 'Available From',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'znm2flgb': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // createJob
  {
    '5maeu8hf': {
      'en': 'Add Job',
      'hi': 'टास्क बनाएं',
      'ta': 'பணியை உருவாக்கவும்',
      'ur': 'ٹاسک بنائیں',
    },
    'l8bglscl': {
      'en': 'Job title',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'n1y7g92e': {
      'en': 'Industry 1',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    '1ljlh4tp': {
      'en': 'Industry 2',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'vs5j72q2': {
      'en': 'Industry 3',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'beec94mc': {
      'en': 'Select Industry',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'p0c23doi': {
      'en': 'Enter description here...',
      'hi': 'यहां विवरण दर्ज करें...',
      'ta': 'விளக்கத்தை இங்கே உள்ளிடவும்...',
      'ur': 'یہاں تفصیل درج کریں...',
    },
    'wpm2si5b': {
      'en': 'Male',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'llnhgx4a': {
      'en': 'Female',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    '0hmvpsic': {
      'en': 'Other',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    '5n4x9scg': {
      'en': 'Select Gender',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'r6n9dmsk': {
      'en': 'Number of Openings',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '1yfv0028': {
      'en': 'Working Hours',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '1nbjjqyk': {
      'en': 'Minimum Age',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '1vjevkk5': {
      'en': 'Maximum Age',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    're4r1lkn': {
      'en': 'Daily',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'ptyt1h7n': {
      'en': 'Weekly',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'gcvdijqn': {
      'en': 'Monthly',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    '9a99unmx': {
      'en': 'Select Salary Type\n',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'iq2iw4qn': {
      'en': 'Minimum Salary',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '245nibpx': {
      'en': 'Maximum Salary',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '6a1ijdvw': {
      'en': 'Skill 1',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'j8q9kpak': {
      'en': 'Skill 2',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'ln9x7oq0': {
      'en': 'Skill 3',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'st81wlxd': {
      'en': 'Select Primary Skill',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'oucgiske': {
      'en': 'Beginner',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'xxysx5hp': {
      'en': 'Intermediate',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'yp1at9l3': {
      'en': 'Advanced',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'ic17sp69': {
      'en': 'Select Skill Level',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'c06e9n2o': {
      'en': 'None',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'lwzn2n53': {
      'en': 'School',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'cxlucwkj': {
      'en': 'College',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    '7wsiqppt': {
      'en': 'Select Job Qualification',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'kl1ite0f': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'di62rw8j': {
      'en': 'Area',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ne5vgnk3': {
      'en': 'State',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '6xeh7mot': {
      'en': 'District',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'e5dcw7vu': {
      'en': 'Food',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'hju5l9aa': {
      'en': 'Accomodation',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'yt70es2i': {
      'en': 'Medical',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'pyp76sn0': {
      'en': 'Transportation',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'mrekouto': {
      'en': 'Create Job',
      'hi': 'टास्क बनाएं',
      'ta': 'பணியை உருவாக்கவும்',
      'ur': 'ٹاسک بنائیں',
    },
    '3nx43hj1': {
      'en': 'Please add a task name.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'tjxg3net': {
      'en': 'Please enter at least 3 letters.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '3khebw6t': {
      'en': 'Please choose an option from the dropdown',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '45sp2bki': {
      'en': 'Field is required',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'cm4f3q0t': {
      'en': 'Please choose an option from the dropdown',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // jobDetails
  {
    'fnprsz9h': {
      'en': 'Job Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '10opor10': {
      'en': 'Job Title',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '5axj01l2': {
      'en': 'Industry',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ypx1pgin': {
      'en': 'Start Date',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'vwvwwjby': {
      'en': 'Primary Skill',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'kpa3nwxq': {
      'en': 'End Date',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'aqytgynj': {
      'en': 'Gender',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ol98g3ir': {
      'en': 'Job Openings',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'kgxadclk': {
      'en': 'Working Hours',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'q4ikqgkd': {
      'en': 'Captains',
      'hi': 'टीम के सदस्य',
      'ta': 'குழு உறுப்பினர்கள்',
      'ur': 'ٹیم کے افراد',
    },
    'qrkfqya2': {
      'en': 'Workers Applied',
      'hi': 'टिप्पणियाँ',
      'ta': 'குறிப்புகள்',
      'ur': 'نوٹس',
    },
    '0qvvz2wp': {
      'en': 'Accept',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'j5wcg5yd': {
      'en': 'Reject',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'q5i02gt3': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // captainOTP
  {
    'iv0ab7pf': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    '57wwhpbl': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    '85fs7zl8': {
      'en': 'One Time Password',
      'hi': 'पासवर्ड भूल गए',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா',
      'ur': 'پاسورڈ بھول گے',
    },
    'ndjnc0q0': {
      'en':
          'We will send you a text message with a one time password, please enter the password to autheticate your account.',
      'hi':
          'हम आपको आपका पासवर्ड रीसेट करने के लिए एक लिंक के साथ एक ईमेल भेजेंगे, कृपया नीचे अपने खाते से संबद्ध ईमेल दर्ज करें।',
      'ta':
          'உங்கள் கடவுச்சொல்லை மீட்டமைக்க இணைப்புடன் கூடிய மின்னஞ்சலை உங்களுக்கு அனுப்புவோம், உங்கள் கணக்குடன் தொடர்புடைய மின்னஞ்சலை கீழே உள்ளிடவும்.',
      'ur':
          'ہم آپ کو اپنا پاس ورڈ دوبارہ ترتیب دینے کے لیے ایک لنک کے ساتھ ایک ای میل بھیجیں گے، براہ کرم نیچے اپنے اکاؤنٹ سے وابستہ ای میل درج کریں۔',
    },
    '650v8um9': {
      'en': '',
      'hi': 'आपका ईमेल पता...',
      'ta': 'உங்கள் மின்னஞ்சல் முகவரி...',
      'ur': 'آپ کا ای میل پتہ...',
    },
    '12b8v3xh': {
      'en': 'Enter one time password...',
      'hi': 'अपना ईमेल दर्ज करें...',
      'ta': 'மின்னஞ்சலை பதிவுசெய்...',
      'ur': 'اپنا ای میل درج کریں...',
    },
    'co5i1a1d': {
      'en': 'Submit',
      'hi': 'लिंक भेजें',
      'ta': 'இணைப்பை அனுப்பவும்',
      'ur': 'لنک بھیجیں۔',
    },
    '9j8qsrjr': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // myProfile
  {
    '5n51xmhd': {
      'en': 'Switch to Dark Mode',
      'hi': 'डार्क मोड में स्विच करें',
      'ta': 'டார்க் பயன்முறைக்கு மாறவும்',
      'ur': 'ڈارک موڈ پر سوئچ کریں۔',
    },
    'w3vpe9rl': {
      'en': 'Switch to Light Mode',
      'hi': 'लाइट मोड में स्विच करें',
      'ta': 'லைட் பயன்முறைக்கு மாறவும்',
      'ur': 'لائٹ موڈ پر سوئچ کریں۔',
    },
    '05v307ij': {
      'en': 'Account Settings',
      'hi': 'अकाउंट सेटिंग',
      'ta': 'கணக்கு அமைப்புகள்',
      'ur': 'اکاؤنٹ کی ترتیبات',
    },
    'o1pcrlaz': {
      'en': 'Change Password',
      'hi': 'पासवर्ड बदलें',
      'ta': 'கடவுச்சொல்லை மாற்று',
      'ur': 'پاس ورڈ تبدیل کریں',
    },
    'alhgf413': {
      'en': 'Edit Profile',
      'hi': 'प्रोफ़ाइल संपादित करें',
      'ta': 'சுயவிவரத்தைத் திருத்து',
      'ur': 'پروفائل میں ترمیم کریں',
    },
    'w4vsr6hu': {
      'en': 'Log Out',
      'hi': 'लॉग आउट',
      'ta': 'வெளியேறு',
      'ur': 'لاگ آوٹ',
    },
    '3e1n01mf': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // addCaptain
  {
    'dzbojo7r': {
      'en': 'Add Captain',
      'hi': 'उपयोगकर्ता को आमंत्रित करें',
      'ta': 'பயனரை அழைக்கவும்',
      'ur': 'صارف کو مدعو کریں۔',
    },
    'dax7zrgi': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '5ilq7vbh': {
      'en': 'Full Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'lqbsfdqz': {
      'en': 'Mobile Phone',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    '733r7kk8': {
      'en': 'Email',
      'hi': 'ईमेल',
      'ta': 'மின்னஞ்சல்',
      'ur': 'ای میل',
    },
    '39qfddvg': {
      'en': 'Male',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    '0rrub9lg': {
      'en': 'Female',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    '23fglgb8': {
      'en': 'Other',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    'd6ul4ero': {
      'en': 'Select Gender',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    'kjvi772q': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'u2iuc2wv': {
      'en': 'Recruitment Area',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'hqq2lgqq': {
      'en': 'Referral Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '6zetb8y0': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ijp0ay8r': {
      'en': 'Aadhar',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'avncvj9x': {
      'en': 'PAN Number',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'b8uv7o2c': {
      'en': 'IFSC Code',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'e873bjtk': {
      'en': 'Account Number ',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    '31rxbrxp': {
      'en': 'Account Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'zr04mq2x': {
      'en': 'Bank Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'c38hkcs1': {
      'en': 'Create Profile',
      'hi': 'उपयोगकर्ता बनाएं और आमंत्रित करें',
      'ta': 'பயனரை உருவாக்கி அழைக்கவும்',
      'ur': 'صارف بنائیں اور مدعو کریں۔',
    },
    '41umybiv': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'i5wagnfq': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'h5euxn0m': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'ag9dglwf': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
  },
  // mainCaptain
  {
    'o4agumg5': {
      'en': 'My Captains',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
    'h4vrw93q': {
      'en': 'My Captains',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
    '0st3yqow': {
      'en': 'Search members...',
      'hi': 'सदस्यों को खोजें...',
      'ta': 'உறுப்பினர்களைத் தேடு...',
      'ur': 'اراکین کو تلاش کریں...',
    },
    'hw94eld1': {
      'en': 'Find Members',
      'hi': 'सदस्य खोजें',
      'ta': 'உறுப்பினர்களைக் கண்டறியவும்',
      'ur': 'ممبرز تلاش کریں۔',
    },
    '50biycd8': {
      'en': 'My Team',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
  },
  // mainScout
  {
    '7n1ibily': {
      'en': 'My Scouts',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
    'hl30we0n': {
      'en': 'My Scouts',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
    'vle7ekjr': {
      'en': 'Search members...',
      'hi': 'सदस्यों को खोजें...',
      'ta': 'உறுப்பினர்களைத் தேடு...',
      'ur': 'اراکین کو تلاش کریں...',
    },
    'izx89p8n': {
      'en': 'Find Members',
      'hi': 'सदस्य खोजें',
      'ta': 'உறுப்பினர்களைக் கண்டறியவும்',
      'ur': 'ممبرز تلاش کریں۔',
    },
    'xzhfbr1o': {
      'en': 'My Team',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
  },
  // captainProfile
  {
    'w1u3c7if': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '5ixp7u1p': {
      'en': 'Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'so7fvm9e': {
      'en': 'Mobile',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'wbo1rvnf': {
      'en': 'Email',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'kjnhmmxr': {
      'en': 'Date of Birth',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'jazmoaam': {
      'en': 'Area',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'k47pzmio': {
      'en': 'State',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '0ftxz3y7': {
      'en': 'District',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '13bv2y1l': {
      'en': 'Recruitment Area',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'l6hplfuw': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'baic5dyw': {
      'en': 'Aadhar',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'g2y4ozsb': {
      'en': 'PAN Number',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '6b7zdrqx': {
      'en': 'IFSC Code',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'x50qhvxz': {
      'en': 'Account Number',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'e6i037hz': {
      'en': 'Account Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '6dpbcwhn': {
      'en': 'Bank name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '4cj4t3x4': {
      'en': 'Edit Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'pt9elxe4': {
      'en': 'Captain Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // mainOrganisationsPage
  {
    'qcd4z131': {
      'en': 'Organisations',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '0e5jbrkh': {
      'en': 'A list of organisations below.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'hmxr55qt': {
      'en': 'Organisations',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // mainWorker
  {
    'i11llly8': {
      'en': 'My Workers',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
    'vatm8d7g': {
      'en': 'My Workers',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
    '2945uymu': {
      'en': 'Search members...',
      'hi': 'सदस्यों को खोजें...',
      'ta': 'உறுப்பினர்களைத் தேடு...',
      'ur': 'اراکین کو تلاش کریں...',
    },
    'n0inmm7b': {
      'en': 'Find Members',
      'hi': 'सदस्य खोजें',
      'ta': 'உறுப்பினர்களைக் கண்டறியவும்',
      'ur': 'ممبرز تلاش کریں۔',
    },
    '4p4uigoa': {
      'en': 'My Team',
      'hi': 'मेरी टीम',
      'ta': 'என் அணி',
      'ur': 'میری ٹیم',
    },
  },
  // scoutWorkers
  {
    'zxieytlj': {
      'en': 'Associated Captain',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'qfgm8bij': {
      'en': 'Associated Workers',
      'hi': 'कार्य',
      'ta': 'பணிகள்',
      'ur': 'کام',
    },
    'ex37j567': {
      'en': 'Available From',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    '74pvo3q7': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // organisationJobs
  {
    'bhb3t80d': {
      'en': 'View All Captains',
      'hi': 'सभी को देखें',
      'ta': 'அனைத்தையும் காட்டு',
      'ur': 'سب دیکھیں',
    },
    'le6r4r08': {
      'en': 'Completed Tasks',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'yb5x20jq': {
      'en': 'Number of Tasks',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'vowvn4hh': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'wze8of29': {
      'en': 'In Progress',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '8tbirkv0': {
      'en': 'Job Category',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'yse4mx6q': {
      'en': 'Issue #242952592',
      'hi': 'अंक #242952592',
      'ta': 'வெளியீடு #242952592',
      'ur': 'شمارہ نمبر 242952592',
    },
    'c8kqbjxi': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'l44a1ctl': {
      'en': 'Andres Reynolds',
      'hi': 'एंड्रेस रेनॉल्ड्स',
      'ta': 'ஆண்ட்ரெஸ் ரெனால்ட்ஸ்',
      'ur': 'اینڈریس رینالڈز',
    },
    '4gvujxch': {
      'en': 'Due',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'ksr9zmyr': {
      'en': 'Tuesday, 10:00am',
      'hi': 'मंगलवार, सुबह 10:00 बजे',
      'ta': 'செவ்வாய், காலை 10:00 மணி',
      'ur': 'منگل، صبح 10:00 بجے',
    },
    'yz6or5x7': {
      'en': 'Completed',
      'hi': 'पूरा हुआ',
      'ta': 'நிறைவு',
      'ur': 'مکمل',
    },
    'z1qw4qso': {
      'en': 'Completed',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'xd0lhmlc': {
      'en': 'Completed on',
      'hi': 'पर पूर्ण',
      'ta': 'அன்று நிறைவடைந்தது',
      'ur': 'پر مکمل ہوا۔',
    },
    'jbprfbfw': {
      'en': 'Activity',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xo50zn2h': {
      'en': 'Active Workers',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'kxs2aa11': {
      'en': 'Gender: ',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'fsncan3o': {
      'en': 'Primary Skill: ',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '865c58kf': {
      'en': 'Experience Level: ',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'gu1u8be2': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    'l17eg1do': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // workerJobs
  {
    't8miccra': {
      'en': 'Applied Jobs',
      'hi': 'कार्य',
      'ta': 'பணிகள்',
      'ur': 'کام',
    },
    'at9bdcua': {
      'en': 'Application Submitted',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'u9iamy0p': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // scoutProfile
  {
    'c3swt1vv': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'efqdnmj6': {
      'en': 'Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '7gr85iug': {
      'en': 'Gender',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '4m06vaop': {
      'en': 'Mobile',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'a3qsnfa0': {
      'en': 'Email',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'rh6557br': {
      'en': 'Date of Birth',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'zi5ifwun': {
      'en': 'Area',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'o25s2o36': {
      'en': 'State',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'slo2ufci': {
      'en': 'District',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'h6vkrc0o': {
      'en': 'Recruitment Area',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'qz25r2w2': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ipalyhmi': {
      'en': 'Aadhar',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'q4ilm4ez': {
      'en': 'PAN Number',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'manqawgx': {
      'en': 'IFSC Code',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'mw06xnr1': {
      'en': 'Account Number',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '2w5cxjzx': {
      'en': 'Account Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'yxcrzber': {
      'en': 'Bank Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'oe3kz1qx': {
      'en': 'Edit Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '4g88jur2': {
      'en': 'Scout Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // editScoutProfile
  {
    'iigwwag7': {
      'en': 'Change Photo',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'pqqst56g': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'vppe8yzw': {
      'en': 'Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '19vhb3rt': {
      'en': 'Male',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    'gawkg9ad': {
      'en': 'Female',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    '3wa6wk21': {
      'en': 'Other',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    'umnt2h7b': {
      'en': 'Select Gender',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    'p93xdzol': {
      'en': 'Mobile',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'ko3aaplx': {
      'en': 'Email',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'pidlzw1l': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'xl2ozhae': {
      'en': 'Recruitment Area',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '2lqhhdzx': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'p4fzfqfk': {
      'en': 'Aadhar',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'k9lklu3v': {
      'en': 'PAN Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '2w5lau3h': {
      'en': 'IFSC Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '3uzdmnk5': {
      'en': 'Account Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'jolpdz6q': {
      'en': 'Account Name',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'sngzt7fs': {
      'en': 'Account Name',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'gh2hxn6y': {
      'en': 'Save Changes',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ljdcel2v': {
      'en': 'Edit Profile',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // workerProfile
  {
    'cdze8pae': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ff2eaeob': {
      'en': 'Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'u6w576o8': {
      'en': 'Mobile',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'c3evsaum': {
      'en': 'Email',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'mk46vcde': {
      'en': 'Date of Birth',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xpr5ksha': {
      'en': 'Area',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'frwaykg9': {
      'en': 'State',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'gv4hrnbc': {
      'en': 'District',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'qxio5qo7': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '0qonulj7': {
      'en': 'Aadhar',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '714uc0ja': {
      'en': 'PAN Number',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ynri7t83': {
      'en': 'IFSC Code',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'gpoms9e8': {
      'en': 'Account Number',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'hnzpb76i': {
      'en': 'Account Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '5rr6z0ij': {
      'en': 'Bank Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'p6my2gn3': {
      'en': '-',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'd0241nyw': {
      'en': 'Skills : ',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'skzcnhqy': {
      'en': 'Edit Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'k8wfg4ok': {
      'en': 'Edit Skills & Experience',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'yaakkbkb': {
      'en': 'Worker Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // editOrganisation
  {
    'xm0ojz3j': {
      'en': 'Change Photo',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'veh75wy7': {
      'en': 'Organisation Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '6um683ot': {
      'en': 'Organisation Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '0ta1jrhi': {
      'en': 'Industry 1',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    'x6qen1nz': {
      'en': 'Industry 2',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    '6bwhl89v': {
      'en': 'Industry 3',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    '10dlymqa': {
      'en': 'Select Industry',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    '6e96n7qc': {
      'en': 'Main Contact',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'm0z4pki3': {
      'en': 'Phone Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'lxq6gj5n': {
      'en': 'Email',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'e9xqepak': {
      'en': 'Street Address',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'dy9aerlj': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'p5k6fbbq': {
      'en': 'Save Changes',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'kp7ugtjf': {
      'en': 'Edit Organisation',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // editWorkerProfile
  {
    'pvr351jx': {
      'en': 'Change Photo',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ujzl1vea': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xu9q52o2': {
      'en': 'Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'x8rpemn9': {
      'en': 'Male',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    'ng8tnc2b': {
      'en': 'Female',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    'rq38je72': {
      'en': 'Other',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    'k1pg88tm': {
      'en': 'Select Gender',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    'gxj790ju': {
      'en': 'Mobile',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'izkemjuf': {
      'en': 'Email',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'xmhg32te': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'snrit6u0': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'joj939xs': {
      'en': 'Aadhar',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'em1u0gak': {
      'en': 'PAN Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '83q4vu0h': {
      'en': 'IFSC Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '69lm6pjq': {
      'en': 'Account Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '2yaykqfn': {
      'en': 'Account Name',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'v5xwmrn8': {
      'en': 'Bank Name',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'l5mj8vvp': {
      'en': 'Save Changes',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ny4zsio0': {
      'en': 'Edit Profile',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // addOrganisation
  {
    '4xq6rzn3': {
      'en': 'Add Organisation',
      'hi': 'उपयोगकर्ता को आमंत्रित करें',
      'ta': 'பயனரை அழைக்கவும்',
      'ur': 'صارف کو مدعو کریں۔',
    },
    'tw3lv075': {
      'en': 'Organisation Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '76cdg2xy': {
      'en': 'Organisation Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'ioqve8w1': {
      'en': 'Industry 1',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    'jfv9zxs9': {
      'en': 'Industry 2',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    '5rp3nnwu': {
      'en': 'Industry 3',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    '82x7g2s3': {
      'en': 'Select Industry',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    '015575lk': {
      'en': 'Main Contact',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'asynhiw7': {
      'en': 'Phone Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'yjkub9ha': {
      'en': 'Email',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'gm13xptv': {
      'en': 'Street Address',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'psu4yyfx': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'd6cxgac0': {
      'en': 'Create Profile',
      'hi': 'उपयोगकर्ता बनाएं और आमंत्रित करें',
      'ta': 'பயனரை உருவாக்கி அழைக்கவும்',
      'ur': 'صارف بنائیں اور مدعو کریں۔',
    },
    'mas0sxib': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'bfephl32': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'g8z5pvfi': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'ijyvx4vk': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
  },
  // scoutOTP
  {
    'ttk5uono': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    '816b4xp5': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    'p8lqains': {
      'en': 'One Time Password',
      'hi': 'पासवर्ड भूल गए',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா',
      'ur': 'پاسورڈ بھول گے',
    },
    'h7twpr35': {
      'en':
          'We will send you a text message with a one time password, please enter the password to autheticate your account.',
      'hi':
          'हम आपको आपका पासवर्ड रीसेट करने के लिए एक लिंक के साथ एक ईमेल भेजेंगे, कृपया नीचे अपने खाते से संबद्ध ईमेल दर्ज करें।',
      'ta':
          'உங்கள் கடவுச்சொல்லை மீட்டமைக்க இணைப்புடன் கூடிய மின்னஞ்சலை உங்களுக்கு அனுப்புவோம், உங்கள் கணக்குடன் தொடர்புடைய மின்னஞ்சலை கீழே உள்ளிடவும்.',
      'ur':
          'ہم آپ کو اپنا پاس ورڈ دوبارہ ترتیب دینے کے لیے ایک لنک کے ساتھ ایک ای میل بھیجیں گے، براہ کرم نیچے اپنے اکاؤنٹ سے وابستہ ای میل درج کریں۔',
    },
    'ju1zwb5t': {
      'en': '',
      'hi': 'आपका ईमेल पता...',
      'ta': 'உங்கள் மின்னஞ்சல் முகவரி...',
      'ur': 'آپ کا ای میل پتہ...',
    },
    'tke0q0z1': {
      'en': 'Enter one time password...',
      'hi': 'अपना ईमेल दर्ज करें...',
      'ta': 'மின்னஞ்சலை பதிவுசெய்...',
      'ur': 'اپنا ای میل درج کریں...',
    },
    'hrkc3hkl': {
      'en': 'Submit',
      'hi': 'लिंक भेजें',
      'ta': 'இணைப்பை அனுப்பவும்',
      'ur': 'لنک بھیجیں۔',
    },
    'g5fa6tbn': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // organisationProfile
  {
    'btasszm6': {
      'en': 'Organisation Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'jxa3zh2n': {
      'en': 'Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'se39ua43': {
      'en': 'Industry',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '1nm20297': {
      'en': 'Main Contact',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'bdzq58ch': {
      'en': 'Phone Number',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'yvwx6alh': {
      'en': 'Email',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'n2u3ssdo': {
      'en': 'Street Address',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '5fp7srqg': {
      'en': 'Pin Code',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'tfyz3fp8': {
      'en': 'Area',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'uuwc7lwr': {
      'en': 'State',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'o25cys6l': {
      'en': 'District',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'sgri7v5k': {
      'en': 'Edit Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'qw9qopfb': {
      'en': 'Organisation Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // addScout
  {
    '60epuueu': {
      'en': 'Add Scout',
      'hi': 'उपयोगकर्ता को आमंत्रित करें',
      'ta': 'பயனரை அழைக்கவும்',
      'ur': 'صارف کو مدعو کریں۔',
    },
    'vfzf17sh': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ly9xreu2': {
      'en': 'Full Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'vzhm3nww': {
      'en': 'Mobile Phone',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    '3xu39rel': {
      'en': 'Email',
      'hi': 'ईमेल',
      'ta': 'மின்னஞ்சல்',
      'ur': 'ای میل',
    },
    'bdddrdq2': {
      'en': 'Male',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    '30185mwq': {
      'en': 'Female',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    'j90b1q36': {
      'en': 'Other',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    '6a61tos1': {
      'en': 'Select Gender',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    'gzl2afuy': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'y72gch1y': {
      'en': 'Recruitment Area',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'y5xksjyz': {
      'en': 'Referral Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '259rospw': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'kyvw2u6s': {
      'en': 'Aadhar',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    '6v5k1w5h': {
      'en': 'PAN Number',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    '2d8tt8ds': {
      'en': 'IFSC Code',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'iyyd0cd3': {
      'en': 'Account Number ',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    '4gq2ejki': {
      'en': 'Account Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'evozmx8o': {
      'en': 'Bank Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'awng4qub': {
      'en': 'Create Profile',
      'hi': 'उपयोगकर्ता बनाएं और आमंत्रित करें',
      'ta': 'பயனரை உருவாக்கி அழைக்கவும்',
      'ur': 'صارف بنائیں اور مدعو کریں۔',
    },
    'jbbkm29u': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'g25gkvsx': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'p2nc9anc': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'g53o4r1f': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
  },
  // addWorker
  {
    '09vf9xyd': {
      'en': 'Add Worker',
      'hi': 'उपयोगकर्ता को आमंत्रित करें',
      'ta': 'பயனரை அழைக்கவும்',
      'ur': 'صارف کو مدعو کریں۔',
    },
    'qc8wrmrv': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'kp2hskr9': {
      'en': 'Full Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    '3b9apilq': {
      'en': 'Phone Number',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'zaci5ome': {
      'en': 'Email',
      'hi': 'ईमेल',
      'ta': 'மின்னஞ்சல்',
      'ur': 'ای میل',
    },
    '8ryue4wr': {
      'en': 'Date of Birth',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'o3wx7do4': {
      'en': 'Male',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    'q5rfjjw4': {
      'en': 'Female',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    '2l1zu1o4': {
      'en': 'Other',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    'nk8fjl2s': {
      'en': 'Select Gender',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    'sx4h0hxq': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'tf4kvlaq': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'io1xu8x5': {
      'en': 'Aadhar',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'x889sbpy': {
      'en': 'PAN Number',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'w5tu6wz5': {
      'en': 'IFSC Code',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'ccjsp7tw': {
      'en': 'Account Number ',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'wn1k2nuz': {
      'en': 'Account Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'dpyib8ld': {
      'en': 'Bank Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'r58n01hs': {
      'en': 'Create Profile',
      'hi': 'उपयोगकर्ता बनाएं और आमंत्रित करें',
      'ta': 'பயனரை உருவாக்கி அழைக்கவும்',
      'ur': 'صارف بنائیں اور مدعو کریں۔',
    },
    'lf8xv1i8': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    '6wqc24o2': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'vka8hynv': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'i0kha73c': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
  },
  // workerOTP
  {
    'hlxocyiv': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    '08bqrjef': {
      'en': 'Back',
      'hi': 'पीछे',
      'ta': 'மீண்டும்',
      'ur': 'پیچھے',
    },
    'dp8rb6le': {
      'en': 'One Time Password',
      'hi': 'पासवर्ड भूल गए',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா',
      'ur': 'پاسورڈ بھول گے',
    },
    'mmp8xkv5': {
      'en':
          'We will send you a text message with a one time password, please enter the password to autheticate your account.',
      'hi':
          'हम आपको आपका पासवर्ड रीसेट करने के लिए एक लिंक के साथ एक ईमेल भेजेंगे, कृपया नीचे अपने खाते से संबद्ध ईमेल दर्ज करें।',
      'ta':
          'உங்கள் கடவுச்சொல்லை மீட்டமைக்க இணைப்புடன் கூடிய மின்னஞ்சலை உங்களுக்கு அனுப்புவோம், உங்கள் கணக்குடன் தொடர்புடைய மின்னஞ்சலை கீழே உள்ளிடவும்.',
      'ur':
          'ہم آپ کو اپنا پاس ورڈ دوبارہ ترتیب دینے کے لیے ایک لنک کے ساتھ ایک ای میل بھیجیں گے، براہ کرم نیچے اپنے اکاؤنٹ سے وابستہ ای میل درج کریں۔',
    },
    'j70h4ehs': {
      'en': '',
      'hi': 'आपका ईमेल पता...',
      'ta': 'உங்கள் மின்னஞ்சல் முகவரி...',
      'ur': 'آپ کا ای میل پتہ...',
    },
    'f0gnlh50': {
      'en': 'Enter one time password...',
      'hi': 'अपना ईमेल दर्ज करें...',
      'ta': 'மின்னஞ்சலை பதிவுசெய்...',
      'ur': 'اپنا ای میل درج کریں...',
    },
    'jtayz3lm': {
      'en': 'Submit',
      'hi': 'लिंक भेजें',
      'ta': 'இணைப்பை அனுப்பவும்',
      'ur': 'لنک بھیجیں۔',
    },
    'w3i4j1rg': {
      'en': 'Home',
      'hi': 'घर',
      'ta': 'வீடு',
      'ur': 'گھر',
    },
  },
  // editCaptainProfile
  {
    'fvb1k5tl': {
      'en': 'Change Photo',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'm9s6y7g8': {
      'en': 'Personal Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '222jy3pr': {
      'en': 'Name',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'zkk8c2ri': {
      'en': 'Male',
      'hi': 'टीम 1',
      'ta': 'அணி 1',
      'ur': 'ٹیم 1',
    },
    '9ih0xdt2': {
      'en': 'Female',
      'hi': 'टीम 2',
      'ta': 'அணி 2',
      'ur': 'ٹیم 2',
    },
    '8turt2fd': {
      'en': 'Other',
      'hi': 'टीम 3',
      'ta': 'அணி 3',
      'ur': 'ٹیم 3',
    },
    'lrh0wxct': {
      'en': 'Select Gender',
      'hi': 'टीम का चयन',
      'ta': 'குழுவைத் தேர்ந்தெடுக்கவும்',
      'ur': 'ٹیم منتخب کریں۔',
    },
    'tbl7ja8c': {
      'en': 'Mobile',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'ry4pgynw': {
      'en': 'Email',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '7r4nogv7': {
      'en': 'Pin Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '9yljwlr4': {
      'en': 'Recruitment Area',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '57pnoz6k': {
      'en': 'Bank Details',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '5jr47jtt': {
      'en': 'Aadhar',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    '557nxgsu': {
      'en': 'PAN Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'i5x6zmyx': {
      'en': 'IFSC Code',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'ueyqvscg': {
      'en': 'Account Number',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'v0t9n374': {
      'en': 'Account Name',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'mfg0tgnh': {
      'en': 'Account Name',
      'hi': 'शीर्षक या भूमिका',
      'ta': 'தலைப்பு அல்லது பாத்திரம்',
      'ur': 'عنوان یا کردار',
    },
    'nxoptm3x': {
      'en': 'Save Changes',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '83xeyrs0': {
      'en': 'Edit Profile',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // addSkillsExp
  {
    '9dix1hhl': {
      'en': 'Add Skills & Experience',
      'hi': 'उपयोगकर्ता को आमंत्रित करें',
      'ta': 'பயனரை அழைக்கவும்',
      'ur': 'صارف کو مدعو کریں۔',
    },
    'mfflaak0': {
      'en': 'Add Skills',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xd5gopfy': {
      'en': 'Add Experience',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '98odaavn': {
      'en': 'Submit',
      'hi': 'उपयोगकर्ता बनाएं और आमंत्रित करें',
      'ta': 'பயனரை உருவாக்கி அழைக்கவும்',
      'ur': 'صارف بنائیں اور مدعو کریں۔',
    },
    'jfofqy7l': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    '4gham8lq': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'fu58wsrb': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
    'm5l1j9nh': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ta': 'இந்த பகுதி அவசியமானது',
      'ur': 'فیلڈ کی ضرورت ہے',
    },
  },
  // createJobContract
  {
    'i2ifrml6': {
      'en': 'Job Contract',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '2r1wkcm5': {
      'en': 'Not Started',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'qxg086me': {
      'en': 'In Progress',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'f2i6osgi': {
      'en': 'Complete',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'f5chwcfm': {
      'en': 'Select Salary Type',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'y1d4g04a': {
      'en': 'Salary Amount',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'xqbbwghx': {
      'en': 'Accept',
      'hi': 'टास्क बनाएं',
      'ta': 'பணியை உருவாக்கவும்',
      'ur': 'ٹاسک بنائیں',
    },
    'pbp37afr': {
      'en': 'Home',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // drawerNav
  {
    'j81no67g': {
      'en': 'View',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '1281zly2': {
      'en': '345',
      'hi': '345',
      'ta': '345',
      'ur': '345',
    },
    'ikdzucnf': {
      'en': 'Following',
      'hi': 'निम्नलिखित',
      'ta': 'தொடர்ந்து',
      'ur': 'درج ذیل',
    },
    '0mvvm3zs': {
      'en': '345',
      'hi': '345',
      'ta': '345',
      'ur': '345',
    },
    'ka33pk44': {
      'en': 'Followers',
      'hi': 'समर्थक',
      'ta': 'பின்பற்றுபவர்கள்',
      'ur': 'پیروکار',
    },
    'xnmol3vm': {
      'en': 'Tracker',
      'hi': 'मेरी प्रोफाइल',
      'ta': 'என் சுயவிவரம்',
      'ur': 'میری پروفائل',
    },
    'tgp9100p': {
      'en': 'Projects',
      'hi': 'मेरी प्रोफाइल',
      'ta': 'என் சுயவிவரம்',
      'ur': 'میری پروفائل',
    },
    'gvsvhzns': {
      'en': 'Team',
      'hi': 'मेरी टीम',
      'ta': 'எனது அணிகள்',
      'ur': 'میری ٹیمیں',
    },
    'r33amlko': {
      'en': 'About',
      'hi': 'के बारे में',
      'ta': 'பற்றி',
      'ur': 'کے بارے میں',
    },
    'hfpu6vi1': {
      'en': 'Rate App',
      'hi': 'एप्प का मूल्यांकन',
      'ta': 'பயன்பாட்டை மதிப்பிடவும்',
      'ur': 'ایپ کی درجہ بندی کریں۔',
    },
    'of8ozb94': {
      'en': 'Log Out',
      'hi': 'लॉग आउट',
      'ta': 'வெளியேறு',
      'ur': 'لاگ آوٹ',
    },
  },
  // addTeam
  {
    'uap9xd08': {
      'en': 'Assign Member',
      'hi': 'सदस्य असाइन करें',
      'ta': 'உறுப்பினரை நியமிக்கவும்',
      'ur': 'ممبر تفویض کریں۔',
    },
    'v3df17c1': {
      'en': 'Find members by searching below to add them to this task.',
      'hi': 'नीचे खोज कर सदस्यों को खोजें',
      'ta': 'கீழே தேடுவதன் மூலம் உறுப்பினர்களைக் கண்டறியவும்',
      'ur': 'ذیل میں تلاش کرکے اراکین کو تلاش کریں۔',
    },
    '4gubn0rd': {
      'en': 'Search members...',
      'hi': 'सदस्यों को खोजें...',
      'ta': 'உறுப்பினர்களைத் தேடு...',
      'ur': 'اراکین کو تلاش کریں...',
    },
    'k3vvd9ha': {
      'en': 'Assign',
      'hi': 'सौंपना',
      'ta': 'ஒதுக்க',
      'ur': 'تفویض',
    },
    'gts4h2ob': {
      'en': 'user@domainname.com',
      'hi': 'user@domainname.com',
      'ta': 'user@domainame.com',
      'ur': 'user@domainname.com',
    },
    '5fcmvseb': {
      'en': 'View',
      'hi': 'राय',
      'ta': 'காண்க',
      'ur': 'دیکھیں',
    },
    'ipj4b3o2': {
      'en': 'Username',
      'hi': 'उपयोगकर्ता नाम',
      'ta': 'பயனர் பெயர்',
      'ur': 'صارف نام',
    },
    'hwbisz08': {
      'en': 'user@domainname.com',
      'hi': 'user@domainname.com',
      'ta': 'user@domainame.com',
      'ur': 'user@domainname.com',
    },
    '3t1qpdde': {
      'en': 'View',
      'hi': 'राय',
      'ta': 'காண்க',
      'ur': 'دیکھیں',
    },
    'hpq0skds': {
      'en': 'Username',
      'hi': 'उपयोगकर्ता नाम',
      'ta': 'பயனர் பெயர்',
      'ur': 'صارف نام',
    },
    'zf4p0iqk': {
      'en': 'user@domainname.com',
      'hi': 'user@domainname.com',
      'ta': 'user@domainame.com',
      'ur': 'user@domainname.com',
    },
    'gvttx09d': {
      'en': 'View',
      'hi': 'राय',
      'ta': 'காண்க',
      'ur': 'دیکھیں',
    },
    'jy6ian12': {
      'en': 'user@domainname.com',
      'hi': 'user@domainname.com',
      'ta': 'user@domainame.com',
      'ur': 'user@domainname.com',
    },
    'm88gl572': {
      'en': 'View',
      'hi': 'राय',
      'ta': 'காண்க',
      'ur': 'دیکھیں',
    },
  },
  // createNote
  {
    'i9im6f7s': {
      'en': 'Create Note',
      'hi': 'नोट बनाएं',
      'ta': 'குறிப்பை உருவாக்கவும்',
      'ur': 'نوٹ بنائیں',
    },
    'y8jieyz4': {
      'en': 'Create a note to keep your team in the loop.',
      'hi': 'नीचे खोज कर सदस्यों को खोजें',
      'ta': 'கீழே தேடுவதன் மூலம் உறுப்பினர்களைக் கண்டறியவும்',
      'ur': 'ذیل میں تلاش کرکے اراکین کو تلاش کریں۔',
    },
    'sq20csss': {
      'en': 'Enter your note here...',
      'hi': 'अपना नोट यहां दर्ज करें...',
      'ta': 'உங்கள் குறிப்பை இங்கே உள்ளிடவும்...',
      'ur': 'اپنا نوٹ یہاں درج کریں...',
    },
    'clj48a46': {
      'en': 'Create Note',
      'hi': 'नोट बनाएं',
      'ta': 'குறிப்பை உருவாக்கவும்',
      'ur': 'نوٹ بنائیں',
    },
  },
  // TaskComponent
  {
    'u1d84lda': {
      'en': 'Issue #242952592',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'zcne4fq0': {
      'en': 'Andres Reynolds',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'uuuaezib': {
      'en': 'Completed',
      'hi': 'बकाया',
      'ta': 'காரணமாக',
      'ur': 'واجب الادا',
    },
    'ybk6v4cb': {
      'en': 'Tuesday, 10:00am',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'gc15j92x': {
      'en': 'Tuesday, 10:00am',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // WebNav
  {
    '78xz9zj0': {
      'en': 'Jobs',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'g48z56q4': {
      'en': 'Captains',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '7xarrpr0': {
      'en': 'Scouts',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '86k1fwid': {
      'en': 'Workers',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'rqnlfjsw': {
      'en': 'Organisations',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'qil6547w': {
      'en': 'Admin',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // changePhoto
  {
    'rveosbw6': {
      'en': 'Change Photo',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xkv4rj30': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '9jqfzztm': {
      'en': 'Upload Image',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'tnhsrx4j': {
      'en': 'Save Changes',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // modal_Activity
  {
    '2issmdet': {
      'en': 'Notifications',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '6x1rk6tb': {
      'en': 'Albert Swiss',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'm3xugk70': {
      'en': 'Hello World',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'w8hjyzvt': {
      'en': 'has',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '3imc0dzv': {
      'en': 'albert@companyname.com',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '0ai60m6j': {
      'en': 'has',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '4z8dhmym': {
      'en': 'Project:',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '753yywuq': {
      'en': 'Hello World',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // notification_Trigger
  {
    'eo3dnsoa': {
      'en': '1',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // modalAddSkill
  {
    '14mk5zq8': {
      'en': 'Add Skills',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'cv47mt0w': {
      'en': 'Skill 1',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'hz2c41ht': {
      'en': 'Skill 2',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'ws7349v0': {
      'en': 'Skill 3',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'l6gf6d4n': {
      'en': 'Select Skill',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'iw80xfnp': {
      'en': 'Beginner',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    'xc2kyfse': {
      'en': 'Intermedite',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'e6cigter': {
      'en': 'Advanced',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'avahkeja': {
      'en': 'Select Skill Level',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    'sax058ux': {
      'en': 'Years of Experience',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'u0ktwbgk': {
      'en': 'Is this a primary skill?',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'hq0h8nrn': {
      'en': 'Yes',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '582vr1ft': {
      'en': 'No',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'mj6cikeq': {
      'en': 'Please select...',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'l4wdgx6w': {
      'en': 'Create Skill',
      'hi': 'टास्क बनाएं',
      'ta': 'பணியை உருவாக்கவும்',
      'ur': 'ٹاسک بنائیں',
    },
    '0i2achjb': {
      'en': 'Please add a task name.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xmh9q5lq': {
      'en': 'Please enter at least 3 letters.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '79u3c77v': {
      'en': 'Please choose an option from the dropdown',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'vinpoqdv': {
      'en': 'Field is required',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '51pxfiki': {
      'en': 'Please choose an option from the dropdown',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // modalAddExp
  {
    '2ng1flrj': {
      'en': 'Add Experience',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'nyprijsb': {
      'en': 'Company Name',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'qxrky9gj': {
      'en': 'Job Title',
      'hi': 'पूरा नाम',
      'ta': 'முழு பெயர்',
      'ur': 'پورا نام',
    },
    'rciz6rox': {
      'en': 'Skill 1',
      'hi': 'शुरू नहीं',
      'ta': 'துவங்கவில்லை',
      'ur': 'شروع نہیں کیا',
    },
    '98cqpidc': {
      'en': 'Skill 2',
      'hi': 'चालू',
      'ta': 'செயல்பாட்டில் உள்ளது',
      'ur': 'کام جاری ہے',
    },
    'q0zcyk9r': {
      'en': 'Skill 3',
      'hi': 'पूरा',
      'ta': 'முழுமை',
      'ur': 'مکمل',
    },
    'h8g3ayjk': {
      'en': 'Select Primary Skill',
      'hi': 'स्थिति का चयन करें',
      'ta': 'நிலையைத் தேர்ந்தெடுக்கவும்',
      'ur': 'اسٹیٹس کو منتخب کریں۔',
    },
    '4kzr0imo': {
      'en': 'Create Experience',
      'hi': 'टास्क बनाएं',
      'ta': 'பணியை உருவாக்கவும்',
      'ur': 'ٹاسک بنائیں',
    },
    '2wvecb2s': {
      'en': 'Please add a task name.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'lvb4q3n0': {
      'en': 'Please enter at least 3 letters.',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'g31rabh0': {
      'en': 'Please choose an option from the dropdown',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'a98dlbgu': {
      'en': 'Field is required',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'xbx98mr2': {
      'en': 'Please choose an option from the dropdown',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
  // Miscellaneous
  {
    'fi5o91qd': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'skzc79wn': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '0rnqst8h': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'nh43oztv': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'i4m03gv7': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '9h5b120r': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '2xxt8j1o': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    't7udujpl': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'zbbv93d3': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'cql4rcil': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    't9vh67yu': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'ac2c7a8c': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '43t0g3v5': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'hxsgfsan': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'zuih46g4': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '8oo00kio': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'f4h7j5e1': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'dka0mr3o': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'a9x09f52': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'b9gx9zp0': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    '3ogdlxsd': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
    'uxmsgxy2': {
      'en': '',
      'hi': '',
      'ta': '',
      'ur': '',
    },
  },
].reduce((a, b) => a..addAll(b));
