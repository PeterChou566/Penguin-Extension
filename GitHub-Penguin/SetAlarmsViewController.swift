//
//  SetAlarmsViewController.swift
//  GitHub-Penguin
//
//  Created by M.A.D. Crew on 14/11/2016.
//  Copyright © 2016 M.A.D. Crew. All rights reserved.
//

import UIKit

class SetAlarmsViewController: UIViewController {

    //「設定鈴聲」的按鈕，使用的方法是 Action Sheet。
    @IBAction func Set_Alarm_1(_ sender: UIButton) {
        
        let title = "設定「色狼」鈴聲"
        let message = "請選擇一個鈴聲："
        
        
        let optionOneText = "混合警報" //DANGER Alarm SOUND EFFECT.mp3
        let optionTwoText = "龍捲風警報" //Tornado Warning Siren Sound Effect.mp3
        let optionThreeText = "空襲警報" //Air Raid Siren Modern SOUND EFFECT.mp3
        
        
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let actionOne = UIAlertAction(title: optionOneText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Pervert = "DANGER Alarm SOUND EFFECT")
            })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Pervert = "Tornado Warning Siren Sound Effect")
        })
        
        let actionThree = UIAlertAction(title: optionThreeText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Pervert = "Air Raid Siren Modern SOUND EFFECT")
        })
        
        
        actionSheet.addAction(actionOne)
        actionSheet.addAction(actionTwo)
        actionSheet.addAction(actionThree)
        
        
        self.present(actionSheet, animated: true, completion: nil)
        
        
        
    }
    
    
    @IBAction func Set_Alarm_2(_ sender: UIButton) {
        
        let title = "設定「跟蹤」鈴聲"
        let message = "請選擇一個鈴聲："
        
        
        let optionOneText = "混合警報" //DANGER Alarm SOUND EFFECT.mp3
        let optionTwoText = "龍捲風警報" //Tornado Warning Siren Sound Effect.mp3
        let optionThreeText = "空襲警報" //Air Raid Siren Modern SOUND EFFECT.mp3
        
        
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let actionOne = UIAlertAction(title: optionOneText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Stalker = "DANGER Alarm SOUND EFFECT")
        })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Stalker = "Tornado Warning Siren Sound Effect")
        })
        
        let actionThree = UIAlertAction(title: optionThreeText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Stalker = "Air Raid Siren Modern SOUND EFFECT")
        })
        
        
        actionSheet.addAction(actionOne)
        actionSheet.addAction(actionTwo)
        actionSheet.addAction(actionThree)
        
        
        self.present(actionSheet, animated: true, completion: nil)
        
    }
    
    
    @IBAction func Set_Alarm_3(_ sender: UIButton) {
        
        let title = "設定「危險」鈴聲"
        let message = "請選擇一個鈴聲："
        
        
        let optionOneText = "混合警報" //DANGER Alarm SOUND EFFECT.mp3
        let optionTwoText = "龍捲風警報" //Tornado Warning Siren Sound Effect.mp3
        let optionThreeText = "空襲警報" //Air Raid Siren Modern SOUND EFFECT.mp3
        
        
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let actionOne = UIAlertAction(title: optionOneText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Danger = "DANGER Alarm SOUND EFFECT")
        })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Danger = "Tornado Warning Siren Sound Effect")
        })
        
        let actionThree = UIAlertAction(title: optionThreeText, style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            (Manager.currentSoundEffect_Danger = "Air Raid Siren Modern SOUND EFFECT")
        })
        
        
        actionSheet.addAction(actionOne)
        actionSheet.addAction(actionTwo)
        actionSheet.addAction(actionThree)
        
        
        self.present(actionSheet, animated: true, completion: nil)
        
    }
    
    
    func loadTheme() {
        
        if Manager.currentThemeNumber == 0 {
            
            self.view.backgroundColor = UIColor.init(red: 170.0/255.0, green: 226.0/255.0, blue: 252.0/255.0, alpha: 1.0)
            
            
            
            
        } else if Manager.currentThemeNumber == 1 {
            
            
            self.view.backgroundColor = UIColor.init(red: 238.0/255.0, green: 189.0/255.0, blue: 217.0/255.0, alpha: 1.0)
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadTheme()
        
        // Do any additional setup after loading the view.
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
