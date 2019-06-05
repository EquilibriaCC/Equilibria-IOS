import UIKit

extension UIColor {
    static var wildDarkBlue: UIColor {
        return UIColor(red: 155, green: 172, blue: 197)
    }

    static var wildDarkBlueShadow: UIColor {
        return UIColor(hex: 0x9BACC5)
    }

    static var whiteSmoke: UIColor {
        return UIColor(red: 243, green: 245, blue: 248)
    }

    static var vividBlue: UIColor {
        return UIColor(red: 0, green: 162, blue: 235)
    }

    static var spaceViolet: UIColor {
        return UIColor(red: 34, green: 40, blue: 75)
    }

    static var blueBolt: UIColor {
        return UIColor(red: 0, green: 185, blue: 252)
    }

    static var greenMalachite: UIColor {
        return UIColor(red: 80, green: 130, blue: 229)
    }

    static var lightBlueGrey: UIColor {
        return UIColor(red: 224, green: 233, blue: 246)
    }

    static var tritonGreen: UIColor {
        return UIColor(hex: 0x5182e5)
    }

    static var tritonGreenDark: UIColor {
        return UIColor(hex: 0x11cbaa)
    }

    static var tritonBlack90: UIColor {
        return UIColor(hex: 0x0A0A0A)
    }

    static var tritonBlack80: UIColor {
        return UIColor(hex: 0x252525)
    }

    static var tritonBlack60: UIColor {
        return UIColor(hex: 0x313131)
    }

    static var tritonBlack50: UIColor {
        return UIColor.tritonBlack60.lighterColor(percent: 0.35)
    }

    static var tritonBlack40: UIColor {
        return UIColor.tritonBlack50.lighterColor(percent: 0.2)
    }
}
