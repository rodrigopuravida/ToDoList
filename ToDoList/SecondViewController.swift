//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Rodrigo Carballo on 1/11/16.
//  Copyright © 2016 Rodrigo Carballo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoList.append(item.text!);
        item.text = "";
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    @IBOutlet weak var item: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        item.resignFirstResponder();
        return true;
    }


}

