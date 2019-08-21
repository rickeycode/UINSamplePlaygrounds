//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    var targetString: String = "1"
    
    var contents: String {
        return targetString
    }
    
    lazy var lazyContents: String = {
        return targetString
    }()
    
    override func loadView() {
        let innnerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        innnerView.backgroundColor = .white

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = .black

        view.addSubview(innnerView)
        self.view = view
        view.layoutIfNeeded()
        
        let lazyRect = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 2)
        let lazyLabel = UILabel(frame: lazyRect)
        lazyLabel.font = UIFont.systemFont(ofSize: 32)
        lazyLabel.text = targetString
        lazyLabel.textAlignment = .center
        view.addSubview(lazyLabel)
        
        let contentsRect = CGRect(x: 0, y: view.frame.height / 2, width: view.frame.width, height: view.frame.height / 2)
        let contentsLabel = UILabel(frame: contentsRect)
        contentsLabel.font = UIFont.systemFont(ofSize: 32)
        contentsLabel.text = targetString
        contentsLabel.textAlignment = .center
        view.addSubview(contentsLabel)
        
        
        targetString = "2"
        
        lazyLabel.text = lazyContents
        contentsLabel.text = contents
        
        targetString = "3"
        
        lazyLabel.text = lazyContents
        contentsLabel.text = contents
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
