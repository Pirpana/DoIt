//
//  CompletTaskViewController.swift
//  DoIt
//
//  Created by Maria Salminen-Bavaro on 16.2.2017.
//  Copyright © 2017 Maria Salminen-Bavaro. All rights reserved.
//

import UIKit

class CompletTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    
    var task : Task? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important
        {
            taskLabel.text = " ‼️ \(task!.name!)"
        }
        else
        {
            taskLabel.text = task!.name!
        }
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func completeTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
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
