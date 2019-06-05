import UIKit

final class StandartButton: Button {
    override func configureView() {
        super.configureView()
        backgroundColor = Theme.current.tertiaryButton.background
        setTitleColor(Theme.current.tertiaryButton.text, for: .normal)
   
    }
}
