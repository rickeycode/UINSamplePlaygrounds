//: A UIKit based Playground for presenting user interface
  
import UIKit
import WebKit
import PlaygroundSupport

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        let preferences = WKPreferences()
        preferences.minimumFontSize = 100.0
        preferences.javaScriptEnabled = true
        preferences.javaScriptCanOpenWindowsAutomatically = true
        webConfiguration.preferences = preferences
        webView = WKWebView(frame: CGRect(x: 150, y: 200, width: 200, height: 20), configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadView()
        webView.loadHTMLString(loadHtml(), baseURL: nil)
//        webView.load(URLRequest(url: URL(string: "https://www.apple.com/")!))
//        webView.load(URLRequest(url: URL(string: "https://yahoo.co.jp/")!))
    }
    
    private func loadHtml() -> String {

//        let fileName = "sample_basic"
//        let fileName = "sample_edit_head"
//        let fileName = "sample_edit_inline"
//        let fileName = "sample_edit_body_js"
//        let fileName = "sample_edit_class"
//        let fileName = "sample_edit_class_percentage"
//        let fileName = "sample_edit_class_em"
//        let fileName = "sample_edit_class_fontSizeAdjust"
        let fileName = "sample_edit_class_textSizeAdjust"

        let path = Bundle.main.path(forResource: fileName, ofType: "html")
        let contents = try? String(contentsOfFile: path!, encoding: .utf8)
        return contents ?? ""
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = ViewController()
