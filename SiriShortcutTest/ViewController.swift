//
//  ViewController.swift
//  SiriShortcutTest
//
//  Created by Ethan on 2018/9/21.
//  Copyright © 2018 Ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupIntents()
    }
    
    func setupIntents() {
        let activity = NSUserActivity(activityType: "com.ethan.SiriShortcutTest.你好")
        activity.title = "你好"
        activity.userInfo = ["speech":"hi"]
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        activity.persistentIdentifier = "com.ethan.SiriShortcutTest.你好"
        self.view.userActivity = activity
        activity.becomeCurrent()
    }
    
    public func sayHi() {
        let alert = UIAlertController(title: "Hi There!", message: "Hey there! Glad to see you got this working!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}

