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
        
        let attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeText as String)
        attributeSet.title = "View B"
        attributeSet.contentDescription = "This is View B, It has a black background and white label"
        
        let item = CSSearchableItem(uniqueIdentifier: "View B", domainIdentifier: "com.KefBytesLLC.SearchAPI.ViewB", attributeSet: attributeSet)
        CSSearchableIndex.defaultSearchableIndex().indexSearchableItems([item]) { (error: NSError?) -> Void in
            if let error = error {
                print("Indexing error: \(error.localizedDescription)")
            } else {
                print("Search item successfully indexed!")
            }
        }
        
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
