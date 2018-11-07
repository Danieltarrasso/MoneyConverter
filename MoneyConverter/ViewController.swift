//
//  ViewController.swift
//  MoneyConverter
//
//  Created by Daniel Tarrasso on 30/10/18.
//  Copyright © 2018 Daniel Tarrasso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var arrayCoin: [Moneda] = []
        
        var name = ["euro", "dollar", "peso"]
        var value = ["1.1409", "0.876521", "0,044"]
        var flag = [#imageLiteral(resourceName: "spainflag"), #imageLiteral(resourceName: "USA-PNG-Clipart"), #imageLiteral(resourceName: "1280px-Flag_of_Mexico.svg")]
        var background = [#imageLiteral(resourceName: "barcelona"), #imageLiteral(resourceName: "usa"), #imageLiteral(resourceName: "mexico")]
        
        
        for c in name{
            arrayCoin.append(Moneda(name: name[c], value: value[c], flag: flag[c], background: background[c]))
        }
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var flag: UIImageView!
    @IBOutlet var backgoundImage: UIView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btn_next(_ sender: Any) {
        arrayCoin = UIImage(named: "usa.png")
    }
    
    @IBAction func btn_previous(_ sender: Any) {
    }
    

}

