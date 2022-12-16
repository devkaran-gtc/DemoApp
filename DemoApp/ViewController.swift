//
//  ViewController.swift
//  DemoApp
//
//  Created by Devkaran's Mac mini on 14/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = Bundle.main.object(forInfoDictionaryKey: "API_URL") {
            print("Current URL: \(url)")
        }
        
        if let bundleId = Bundle.main.object(forInfoDictionaryKey: "PRODUCT_BUNDLE_IDENTIFIER") {
            print("Current Bundle is : \(bundleId)")
        }
        
        let titleLabel = {
            let label = UILabel(frame: CGRect(x: 0, y:0, width: view.frame.width - 80, height: 60))
            label.backgroundColor = .red
            if let configurationTitle = Bundle.main.infoDictionary?["API_URL"]  {
                label.text = configurationTitle as! String
            }
            label.textColor = .white
            label.textAlignment = .justified
            return label
        }()
        view.addSubview(titleLabel)
        titleLabel.center = view.center
        
        if let color = Bundle.main.infoDictionary?["BACK_COLOR"] as? String  {
            print(color)
            switch color {
                case "red":
                view.backgroundColor = UIColor.red //or you can use hex colors here
                case "blue":
                view.backgroundColor = UIColor.blue
                case "gray":
                view.backgroundColor = UIColor.gray
                case "green":
                view.backgroundColor = UIColor.green
                case "yellow":
                view.backgroundColor = UIColor.yellow
                default :
                view.backgroundColor = UIColor.black
                }
        }
    }


}

