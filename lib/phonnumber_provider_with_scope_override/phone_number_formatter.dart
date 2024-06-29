import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';

// つこてない
class PhoneNumberFormatter {
  PhoneNumberFormatter(String? parseData) : _parseData = parseData;
  final String? _parseData;

  /// Used to format numbers as mobile or land line
  final _globalPhoneType = PhoneNumberType.mobile;

  /// Use international or national phone format
  final _globalPhoneFormat = PhoneNumberFormat.national;

  /// Current selected country
  final _currentSelectedCountry = JP();

  final _placeholderHint = '';

  var _inputContainsCountryCode = false;

  /// Keep cursor on the end
  final _shouldKeepCursorAtEndOfInput = true;

  String getPlaceHolderhint() {
    late String newPlaceholder;

    if (_globalPhoneType == PhoneNumberType.mobile) {
      if (_globalPhoneFormat == PhoneNumberFormat.international) {
        newPlaceholder =
            _currentSelectedCountry.exampleNumberMobileInternational;
      } else {
        newPlaceholder = _currentSelectedCountry.exampleNumberMobileNational;
      }
    } else {
      if (_globalPhoneFormat == PhoneNumberFormat.international) {
        newPlaceholder =
            _currentSelectedCountry.exampleNumberFixedLineInternational;
      } else {
        newPlaceholder = _currentSelectedCountry.exampleNumberFixedLineNational;
      }
    }

    /// Strip country code from hint
    if (!_inputContainsCountryCode) {
      newPlaceholder = newPlaceholder
          .substring(_currentSelectedCountry.phoneCode.length + 2);
    }
    return newPlaceholder;
  }
}

// 辞書作るの面倒なので後回し
// やり方 日本の国内固定電話番号は "10桁固定" "先頭がprefix 0"で残りが「市/外・内/局番」４桁　「加入者番号」４桁
// 「市/外・内/局番」はフレキシブルで４桁の中で決まる
// よって「市/外・内/局番」の辞書を総務省から引っ張って来て、市外局番の桁を決定してから市内局番の桁を決めてやればいい
// MASK DATAの完成
class JP extends CountryWithPhoneCode {
  JP()
      : super(
            phoneCode: '81',
            countryCode: 'ja',
            exampleNumberMobileNational: '090 5555 5555',
            exampleNumberFixedLineNational: '0791 55 5555',
            phoneMaskMobileNational: '+00 000 0000 0000',
            phoneMaskFixedLineNational: '+00 (0000) 00 0000',
            exampleNumberMobileInternational: '+81 90 5555 5555 ',
            exampleNumberFixedLineInternational: '+81 791 55 5555',
            phoneMaskMobileInternational: '+00 00 0000 0000',
            phoneMaskFixedLineInternational: '+00 000 00 0000',
            countryName: 'Japan');
}

// とりま近場だけ
final List<String> aroundHimejiArecode = [
  "0791",
  "0790",
  "0794",
  "0795",
  "0796",
  "0797",
  "0799",
  "0798",
  "078",
  "079",
  "086",
];
