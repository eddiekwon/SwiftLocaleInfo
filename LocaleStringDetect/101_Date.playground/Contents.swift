import UIKit
import Foundation

var str = "Hello, Locale example !!!"
 
Locale.availableIdentifiers
Locale.isoRegionCodes
Locale.isoCurrencyCodes
Locale.isoLanguageCodes
Locale.commonISOCurrencyCodes

Locale.current.regionCode           // "US"
Locale.current.languageCode         // "en"
Locale.current.currencyCode         // "USD"
Locale.current.currencySymbol       // "$"
Locale.current.groupingSeparator    // ","
Locale.current.decimalSeparator     // "."
Locale.current.usesMetricSystem     // false

Locale.windowsLocaleCode(fromIdentifier: "ko_KR")                   //  1,046
Locale.identifier(fromWindowsLocaleCode: 1042) ?? ""                // "ko_KR"
Locale.windowsLocaleCode(fromIdentifier: Locale.current.identifier) //  1,033 Note: I am in Brasil but I use "en_US" format with all my devices
Locale.windowsLocaleCode(fromIdentifier: "en_US")                                   // 1,033
Locale.identifier(fromWindowsLocaleCode: 1033) ?? ""                                // "en_US"

Locale(identifier: "en_US_POSIX").localizedString(forLanguageCode: "ko")            // "Korean"
Locale(identifier: "en_US_POSIX").localizedString(forRegionCode: "KR")              // "South Korea"
Locale(identifier: "en_US_POSIX").localizedString(forIdentifier: "ko_KR")           // "Korean (South Korea)"

TimeZone.current.localizedName(for: .standard, locale: .current) ?? ""              // "Korean Standard Time"
TimeZone.current.localizedName(for: .shortStandard, locale: .current) ?? ""         // "GMT+9"
TimeZone.current.localizedName(for: .daylightSaving, locale: .current) ?? ""        // "Korean Daylight Time"
TimeZone.current.localizedName(for: .shortDaylightSaving, locale: .current) ?? ""   // "GMT+9"
TimeZone.current.localizedName(for: .generic, locale: .current) ?? ""               // "Korean Standard Time"
TimeZone.current.localizedName(for: .shortGeneric, locale: .current) ?? ""          // "South Korea Time"

var timeZone: String {
    return TimeZone.current.localizedName(for: TimeZone.current.isDaylightSavingTime() ?
        .daylightSaving :
        .standard,
                                          locale: .current) ?? "" }

timeZone       // "Korean Standard Time"

// ref: https://stackoverflow.com/questions/27053135/how-to-get-a-users-time-zone
// ref: https://www.science.co.il/language/Locale-codes.php
