import UIKit

class SecondaryButton: Button {
    override func configureView() {
        super.configureView()
        backgroundColor = Theme.current.secondaryButton.background

    }
}
