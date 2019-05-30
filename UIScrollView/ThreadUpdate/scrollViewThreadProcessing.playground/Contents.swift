//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    
    private let scrollSessionQueue = DispatchQueue(label: "ScrollSessionQueue")   //
    
    override func loadView() {
        let contentView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 2000))
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.white.cgColor]
        gradientLayer.frame.size = contentView.frame.size
        contentView.layer.addSublayer(gradientLayer)
        contentView.layer.masksToBounds = true
        
        let scrollView = UIScrollView()
        scrollView.alwaysBounceHorizontal = false
        scrollView.contentSize = contentView.frame.size
        scrollView.addSubview(contentView)
        scrollView.backgroundColor = .white
        scrollView.delegate = self
        
        self.view = scrollView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadView()
    }
}

// MARK: - scroll delegate
extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // mainthread を圧迫しないように、別スレッドで処理
        scrollSessionQueue.async {
            
            // scroll位置に応じてログを送信
            var count: Int = 0
            var array: [Int] = []
            repeat {
                array.append(count)
                array.reverse()
                count += 1
            } while(count < 200)
        }
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = ViewController()
