import UIKit

enum Theme: String {
    case def, night

    static var current: Theme {
        if
            let rawValue = UserDefaults.standard.string(forKey: Configurations.DefaultsKeys.currentTheme),
            let theme = Theme(rawValue: rawValue) {
            return theme
        }

        return .def
    }

    var bar: BarColorScheme {
        let darkened = UIColor.tritonBlack80.darkerColor(percent: 0.3)
        return BarColorScheme(barTint: darkened, tint: .tritonGreen, text: .white)
    }

    var container: ContainerColorScheme {
        switch self {
        case .def:
            return ContainerColorScheme(background: .tritonBlack80)
        case .night:
            return ContainerColorScheme(background: .wildDarkBlue)
        }
    }

    var primaryButton: ButtonColorScheme {
        switch self {
        case .def:
            return ButtonColorScheme(background: .tritonGreen, text: .white)
        case .night:
            return ButtonColorScheme(background: .whiteSmoke, text: .tritonGreen)
        }
    }

    var secondaryButton: ButtonColorScheme {
        switch self {
        case .def:
            return ButtonColorScheme(background: .wildDarkBlue, text: .white)
        case .night:
            return ButtonColorScheme(background: .whiteSmoke, text: .wildDarkBlue)
        }
    }

    var tertiaryButton: ButtonColorScheme {
        return ButtonColorScheme(background: .tritonBlack60, text: .white)
    }

    var pin: PinIndicatorScheme {
        return PinIndicatorScheme(background: .tritonBlack40, value: .tritonGreen)
    }

    var pinKey: PinKeyScheme {
        return PinKeyScheme(background: .wildDarkBlue, text: .white)
    }

    var pinKeyReversed: PinKeyScheme {
        return PinKeyScheme(background: .tritonBlack40, text: .white)
    }

    var card: CardScheme {
        return CardScheme(background: .tritonBlack60)
    }

    var text: UIColor {
        switch self {
        case .def:
            return .white
        case .night:
            return .whiteSmoke
        }
    }

    var lightText: UIColor {
        switch self {
        case .def:
            return .wildDarkBlue
        case .night:
            return .whiteSmoke
        }
    }

    var progressBar: ProgressBarScheme {
        return ProgressBarScheme(value: .greenMalachite, background: .tritonBlack40)
    }

    var tableCell: CellColorScheme {
        let lighter = UIColor.tritonBlack60.lighterColor(percent: 0.3)
        return CellColorScheme(background: .tritonBlack60, selected: lighter, text: .white, tint: .tritonGreen)
    }

    var labelField: LabelFieldScheme {
        return LabelFieldScheme(textColor: .white, titleColor: .wildDarkBlue, selectedTitleColor: .white)
    }
}
