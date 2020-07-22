//
//  NativeExampleViewController.swift
//  bridgeexample
//
//  Created by Ori Hyams on 21/07/2020.
//

import UIKit

class NativeExampleViewController: UIViewController {
  
  @IBOutlet weak var closeButton: UIButton!
  
  @IBAction func onCloseButtonPressed(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */

}
