import UIKit

final class MainController: UIViewController {
    
    private var squareGradientView = GradientView(colors:
                                                    [UIColor.cyan.cgColor,
                                                    UIColor.red.cgColor])

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(squareGradientView)
        setupConstaints()
    }
    
    private func setupConstaints() {
        squareGradientView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            squareGradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareGradientView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            squareGradientView.widthAnchor.constraint(equalToConstant: 100),
            squareGradientView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
