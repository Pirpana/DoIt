//
//  createTaskViewController.swift
//  DoIt
//
//  Created by Maria Salminen-Bavaro on 16.2.2017.
//  Copyright © 2017 Maria Salminen-Bavaro. All rights reserved.
//

import UIKit

class createTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any){
        // Create a task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        if taskNameTextField.text != nil
        {
        task.name = taskNameTextField.text!
        }
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        
        
        
        navigationController!.popViewController(animated: true)
    
        
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
