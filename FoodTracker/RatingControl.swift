import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    // MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Private methods
    private func setupButtons() {
        
        for _ in 0..<5 {
            
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add contraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add button to view
            addArrangedSubview(button)
            
            ratingButtons.append(button)
        }
    }
    
    // MARK: Button action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}
