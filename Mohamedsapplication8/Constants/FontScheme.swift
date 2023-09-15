import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kRalewayMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayMedium, size: size)
    }

    static func kRalewayExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayExtraBold, size: size)
    }

    static func kRalewayRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRegular, size: size)
    }

    static func kRalewaySemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewaySemiBold, size: size)
    }

    static func kRalewayBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayBold, size: size)
    }

    static func kRalewayRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanRegular, size: size)
    }

    static func kRalewayRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanMedium, size: size)
    }

    static func kRalewayRomanSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanSemiBold, size: size)
    }

    static func kRalewayRomanExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanExtraBold, size: size)
    }

    static func kRalewayRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanBold, size: size)
    }

    static func kMontserratRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRegular, size: size)
    }

    static func kMontserratBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratBold, size: size)
    }

    static func kMontserratSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratSemiBold, size: size)
    }

    static func kMontserratMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratMedium, size: size)
    }

    static func kMontserratExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratExtraBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kRalewayMedium":
            result = self.kRalewayMedium(size: size)
        case "kRalewayExtraBold":
            result = self.kRalewayExtraBold(size: size)
        case "kRalewayRegular":
            result = self.kRalewayRegular(size: size)
        case "kRalewaySemiBold":
            result = self.kRalewaySemiBold(size: size)
        case "kRalewayBold":
            result = self.kRalewayBold(size: size)
        case "kRalewayRomanRegular":
            result = self.kRalewayRomanRegular(size: size)
        case "kRalewayRomanMedium":
            result = self.kRalewayRomanMedium(size: size)
        case "kRalewayRomanSemiBold":
            result = self.kRalewayRomanSemiBold(size: size)
        case "kRalewayRomanExtraBold":
            result = self.kRalewayRomanExtraBold(size: size)
        case "kRalewayRomanBold":
            result = self.kRalewayRomanBold(size: size)
        case "kMontserratRegular":
            result = self.kMontserratRegular(size: size)
        case "kMontserratBold":
            result = self.kMontserratBold(size: size)
        case "kMontserratSemiBold":
            result = self.kMontserratSemiBold(size: size)
        case "kMontserratMedium":
            result = self.kMontserratMedium(size: size)
        case "kMontserratExtraBold":
            result = self.kMontserratExtraBold(size: size)
        default:
            result = self.kRalewayMedium(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayMedium: String = "Raleway-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayExtraBold: String = "Raleway-ExtraBold"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRegular: String = "Raleway-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewaySemiBold: String = "Raleway-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayBold: String = "Raleway-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanRegular: String = "RalewayRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanMedium: String = "RalewayRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanSemiBold: String = "RalewayRoman-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanExtraBold: String = "RalewayRoman-ExtraBold"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanBold: String = "RalewayRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRegular: String = "Montserrat-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratBold: String = "Montserrat-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratSemiBold: String = "Montserrat-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratMedium: String = "Montserrat-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratExtraBold: String = "Montserrat-ExtraBold"
    }
}
