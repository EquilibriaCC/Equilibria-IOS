import Foundation

public enum WalletType {
    case triton, bitcoin

    public var currency: CryptoCurrency {
        switch self {
        case .triton:
            return .triton
        case .bitcoin:
            return .bitcoin
        }
    }

    public func string() -> String {
        switch self {
        case .bitcoin:
            return "Bitcoin"
        case .triton:
            return "triton"
        }
    }
}
