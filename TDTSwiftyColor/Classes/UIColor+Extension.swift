import UIKit

extension UIColor {

    public var rgbString: String {
        let (red, green, blue, _) = self.components

        return String(
            format: "%02X%02X%02X",
            Int(red * 0xff),
            Int(green * 0xff),
            Int(blue * 0xff)
        )
    }

    public var argbString: String {
        let (red, green, blue, alpha) = self.components

        return String(
            format: "%02X%02X%02X%02X",
            Int(alpha * 0xff),
            Int(red * 0xff),
            Int(green * 0xff),
            Int(blue * 0xff)
        )
    }

    public var coreImageColor: CIColor {
        return CIColor(color: self)
    }

    public var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let coreImageColor = self.coreImageColor
        return (coreImageColor.red, coreImageColor.green, coreImageColor.blue, coreImageColor.alpha)
    }

    public convenience init(rgb: UInt, alpha: Float = 1.0) {
        self.init(
            red:   CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgb & 0x0000FF)        / 255.0,
            alpha: CGFloat(alpha)
        )
    }

    public convenience init(argb: UInt) {
        self.init(
            red:   CGFloat((argb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((argb & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( argb & 0x0000FF)        / 255.0,
            alpha: CGFloat((argb & 0xFF0000) >> 24) / 255.0
        )
    }

    public convenience init(hex: String) {
        var trimmed = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (trimmed.hasPrefix("#")) {
            trimmed.remove(at: trimmed.startIndex)
        }

        guard let regex = try? NSRegularExpression(pattern: "^[0-9A-F]+$",
                                                   options: NSRegularExpression.Options()) else {
                                                    self.init(rgb: 0x000000)
                                                    return
        }

        guard regex.numberOfMatches(in: trimmed,
                                    options: NSRegularExpression.MatchingOptions(),
                                    range: NSRange(location: 0, length: trimmed.characters.count)) > 0 else {
                                        self.init(rgb: 0x000000)
                                        return
        }

        guard [3, 6, 8].contains(trimmed.characters.count) else {
            self.init(rgb: 0x000000)
            return
        }

        var hexStr = ""

        // 3文字の場合、6文字に変換させる
        if trimmed.characters.count == 3 {
            for c in trimmed.characters {
                hexStr += "\(c)\(c)"
            }
        } else {
            hexStr = trimmed
        }

        // 6文字の場合、alpha分を合わせて8文字にする
        if hexStr.characters.count == 6 {
            hexStr = "FF" + hexStr
        }

        //
        let scanner = Scanner(string: hexStr)
        scanner.scanLocation = 0

        var rgbValue: UInt64 = 0

        scanner.scanHexInt64(&rgbValue)

        self.init(
            red:   CGFloat((rgbValue & 0x00FF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x0000FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x000000FF)        / 255.0,
            alpha: CGFloat((rgbValue & 0xFF000000) >> 24) / 255.0
        )
    }

}
