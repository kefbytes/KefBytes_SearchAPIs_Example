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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let activity = NSUserActivity(activityType: "com.KefBytesLLC.SearchAPI.ViewB")
        activity.userInfo = ["view": "ViewB"]
        activity.title = "SearchAPIs View B"
        let keywords = Set(["ViewB", "kefbytes"])
        activity.keywords = Set(keywords)
        activity.eligibleForHandoff = false
        activity.eligibleForSearch = true
        //activity.eligibleForPublicIndexing = true
        //activity.expirationDate = NSDate()
        
        //
        let attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeItem as String)
        attributeSet.title = "SearchAPIs View B - attributeSet Title"
        attributeSet.contentDescription = "This is View B of the SearchAPIs app combining NSUserActivity and CoreSpotlight"
        let image:UIImage = UIImage(named: "LetterB")!
        let data: NSData = UIImagePNGRepresentation(image)!
        attributeSet.thumbnailData = data
        
        activity.contentAttributeSet = attributeSet
        self.userActivity = activity
        self.userActivity!.becomeCurrent()
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
