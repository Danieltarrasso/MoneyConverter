//
//  ViewController.swift
//  MoneyConverter
//
//  Created by Daniel Tarrasso on 30/10/18.
//  Copyright © 2018 Daniel Tarrasso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayCoin: [Moneda] = []
    
    var name = ["euro", "dollar", "peso"]
    var value = ["1.1409", "0.876521", "0,044"]
    var flag = [#imageLiteral(resourceName: "spainflag"), #imageLiteral(resourceName: "USA-PNG-Clipart"), #imageLiteral(resourceName: "1280px-Flag_of_Mexico.svg")]
    var background = [#imageLiteral(resourceName: "barcelona"), #imageLiteral(resourceName: "usa"), #imageLiteral(resourceName: "mexico")]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent: Int) -> Int {
        return name.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->String?{
        return name[row]
    }
     
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        
        for c in name{
            arrayCoin.append(Moneda(name: name[c], value: value[c], flag: flag[c], background: background[c]))
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btn_next(_ sender: Any) {
    }
    
    @IBAction func btn_previous(_ sender: Any) {
    }
    

}

