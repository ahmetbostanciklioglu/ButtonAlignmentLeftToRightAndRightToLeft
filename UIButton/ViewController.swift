//
//  ViewController.swift
//  UIButton
//
//  Created by Ahmet Bostancıklıoğlu on 29.12.2022.
//

import UIKit

class ViewController: UIViewController{
    //Set button
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        //Configure button
        button.frame = CGRect(x: 136, y:341 , width: 120, height: 52)
        button.backgroundColor = .systemIndigo
        button.setTitle("LABEL".localized(), for: UIControl.State.normal)
        button.setTitleColor(.white, for: UIControl.State.normal)
        button.setImage(UIImage(systemName: "star.fill"), for: UIControl.State.normal)
        button.tintColor = .white
        view.addSubview(button)
       
        //button image positioning according to language 
        let preferredLanguage = NSLocale.preferredLanguages[0]
        if preferredLanguage ==  "en" {
            button.semanticContentAttribute = .forceLeftToRight
        }else if preferredLanguage == "ar" {
            button.semanticContentAttribute = .forceRightToLeft
        }
    }
}

//Localization
extension String {
    func localized(with comment: String = "") -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: comment)
    }
}


