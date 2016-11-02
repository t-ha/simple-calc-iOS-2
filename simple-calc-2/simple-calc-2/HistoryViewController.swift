//
//  HistoryViewController.swift
//  simple-calc-2
//
//  Created by MAIN on 11.01.16.
//  Copyright © 2016 University of Washington. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var calcHistory: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let offset: Int = 25
        var i = 0
        for calc in calcHistory {
            let label = UILabel(frame: CGRect(x: 0, y: i * offset, width: Int(self.view.frame.size.width), height: 25))
            label.textAlignment = .left
            label.textColor = UIColor.black
            label.backgroundColor = UIColor.white
            label.text = calc
            i += 1
            self.scrollView?.addSubview(label)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "toCalc" {
            let svc = segue.destination as! ViewController
            svc.history = calcHistory
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
