import UIKit

class CardView: BaseView {
    override func configureView() {
        super.configureView()
        backgroundColor = Theme.current.card.background
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        layer.cornerRadius = frame.size.width * 0.05
    }
}
