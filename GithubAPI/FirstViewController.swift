//
//  FirstViewController.swift
//  GithubAPI
//
//  Created by 祖父江亮 on 2017/02/08.
//  Copyright © 2017年 Ryo Sobue. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController {
    
    @IBOutlet weak var searchWord: UITextField!

    @IBAction func buttonPushed(_ sender: Any) {
        print("%@",self.searchWord.text as Any)
        
        let gs = githubSearch()
        gs.getData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

class githubSearch{
    public func getData(reset:Bool = false) {
        
        let parameters: Parameters = ["q":"OthloTech","sort":"stars","order":"desc"]
        Alamofire.request("https://api.github.com/search/repositories", method: .get, parameters: parameters).responseJSON{
            response in
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }
    
}
