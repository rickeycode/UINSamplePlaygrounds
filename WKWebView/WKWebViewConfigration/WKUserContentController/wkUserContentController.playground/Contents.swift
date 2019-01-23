//: A UIKit based Playground for presenting user interface
  
import UIKit
import WebKit
import PlaygroundSupport

class ViewController: UIViewController {
    
    var webView: WKWebView!
    
    override func loadView() {
        
        // ① WKUserContentController の生成
        let userContentController = WKUserContentController()
        // ② WKUserContentController にコールバックハンドラを登録
        userContentController.add(self, name: "jsCallbackHandler")

        let webConfiguration = WKWebViewConfiguration()
        // ③ WKWebViewConfiguration に生成した WKUserContentController を登録する
        webConfiguration.userContentController = userContentController
        
        webView = WKWebView(frame: CGRect(x: 150, y: 200, width: 200, height: 20), configuration: webConfiguration)
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadView()
        webView.loadHTMLString(loadHtml(), baseURL: nil)
    }
    
    private func loadHtml() -> String {

        let fileName = "sample"

        let path = Bundle.main.path(forResource: fileName, ofType: "html")
        let contents = try? String(contentsOfFile: path!, encoding: .utf8)
        return contents ?? ""
    }
}

extension ViewController: WKScriptMessageHandler {
    
    // JavaScript から呼び出されるコールバックハンドラ関数
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        switch message.name {
        case "jsCallbackHandler":
            print("Javascript message arrived: jsCallbackHandler")
        default:
            return
        }
    }

}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = ViewController()
