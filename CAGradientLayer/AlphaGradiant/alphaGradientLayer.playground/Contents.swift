//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let innnerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        innnerView.backgroundColor = .white

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = .black

        view.addSubview(innnerView)
        self.view = view
        view.layoutIfNeeded()
        setupLayer(view: innnerView)
    }
    
    func setupLayer(view: UIView) {

//        view.clipsToBounds = true
        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.red.cgColor]
        gradientLayer.colors = [UIColor.red.withAlphaComponent(0).cgColor, UIColor.red.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.layer.addSublayer(gradientLayer)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
