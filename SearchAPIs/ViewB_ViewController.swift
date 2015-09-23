//
//  ViewB_ViewController.swift
//  SearchAPIs
//
//  Created by Franks, Kent on 9/23/15.
//  Copyright © 2015 Franks, Kent. All rights reserved.
//

import UIKit
import CoreSpotlight
import MobileCoreServices

class ViewB_ViewController: UIViewController {

    let activity = NSUserActivity(activityType: "com.KefBytesLLC.SearchAPI.ViewB")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        activity.title = "SearchAPIs ViewB"
        activity.keywords = Set(["ViewB", "SearchAPIs"])
        activity.userInfo = ["view": "ViewB"]
        activity.eligibleForSearch = true
        activity.eligibleForPublicIndexing = true
        activity.becomeCurrent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
