//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

enum HideBarStyle {
    case `default`
    case verticallyCompact
    case keyboardAppear
}

class MyViewController : UIViewController {
    
    let input = UITextField(frame: CGRect(x: 20, y: 100, width: 200, height: 60))

    override func loadView() {
        let wrapperView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 600))
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 600))
        tableView.delegate = self
        tableView.dataSource = self

        wrapperView.addSubview(tableView)
        view = wrapperView
        setup()
    }
    
    func setup() {
        switch style {
        case .default:
            break
        case .keyboardAppear:
            input.delegate = self
            input.backgroundColor = .white
            input.layer.cornerRadius = 8
            input.layer.borderColor = UIColor.lightGray.cgColor
            input.layer.borderWidth = 1
            view.addSubview(input)
        case .verticallyCompact:
            break
        }
    }
}

extension MyViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        input.resignFirstResponder()
        return true
    }
}

extension MyViewController: UITableViewDelegate {
}

extension MyViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Content.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "default")
        cell.textLabel?.text = Content.items[indexPath.row]
        return cell
    }
}

struct Content {
    static let items = ["AAA","BBB","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC"]
}

// Playgroundでの非同期処理を待つオプション
//PlaygroundPage.current.needsIndefiniteExecution = true

// test style
let style: HideBarStyle = .keyboardAppear

let viewController = MyViewController()
viewController.title = "I love Beatles."

let navigationController = UINavigationController(rootViewController: viewController)
navigationController.view.frame = CGRect(x: 0, y: 100, width: 640, height: 800)

switch style {
case .default:
    navigationController.hidesBarsOnSwipe = true
case .keyboardAppear:
    navigationController.hidesBarsWhenKeyboardAppears = true
case .verticallyCompact:
    navigationController.hidesBarsWhenVerticallyCompact = true
}

//Live Viewに上記のViewを表示させる
PlaygroundPage.current.liveView = navigationController.view
