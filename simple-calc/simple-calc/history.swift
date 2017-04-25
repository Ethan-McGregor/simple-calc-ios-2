//
//  history.swift
//  simple-calc-2
//
//  Created by studentuser on 4/25/17.
//  Copyright © 2017 Ethan McGregor. All rights reserved.
//


import UIKit

class HistoryViewController: UIViewController {
    let screenSize: CGRect = UIScreen.main.bounds
    var history = [""]
    
    @IBOutlet weak var scroll: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        for i in 0..<history.count {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            label.center = CGPoint(x: 100, y: i * 21)
            label.textAlignment = .left
            label.text = history[i]
            self.scroll.addSubview(label)
        }
        
        scroll.contentSize = CGSize(width: 200, height: history.count * 21)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
