//
//  ViewController.swift
//  CarOptions2BrianS
//
//  Created by Brian Seaver on 5/12/20.
//  Copyright © 2020 clc.seaver. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    @IBOutlet weak var exteriorLabelOutlet: UILabel!
    @IBOutlet var exteriorButtonsOutlet: [UIButton]!
    
    @IBOutlet weak var interiorLabelOutlet: UILabel!
    @IBOutlet var interiorButtonsOutlet: [UIButton]!
    
    
    @IBOutlet var materialButtonsOutlet:[UIButton]!
    
    @IBOutlet var tireButtonsOutlet: [UIButton]!
    
    @IBOutlet var engineButtonsOutlet: [UIButton]!
    
    var sound : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    func playSound(file f: String){
      let path = Bundle.main.path(forResource: f, ofType:nil)!
      let url = URL(fileURLWithPath: path)

      do {
          sound =  try AVAudioPlayer(contentsOf: url)
          sound?.play()
      } catch {
          // couldn't load file :(
      }
      }
    
    
    @IBAction func materialButtonAction(_ sender: UIButton) {
        for but in materialButtonsOutlet{
              if but.isSelected{
                  but.isSelected = false
              }
          }
          
        sender.isSelected = true
           
        
    }
    

    @IBAction func exteriorButtonAction(_ sender: UIButton) {
        for but in exteriorButtonsOutlet{
            if but.isSelected{
                but.isSelected = false
            }
        }
        
      sender.isSelected = true
            exteriorLabelOutlet.backgroundColor = sender.backgroundColor
        if exteriorLabelOutlet.backgroundColor == UIColor.black{
            exteriorLabelOutlet.textColor = UIColor.white
        }
            else{
                exteriorLabelOutlet.textColor = UIColor.black
            }
        }
      
    
    
    @IBAction func interiorButtonAction(_ sender: UIButton) {
        for but in interiorButtonsOutlet{
                if but.isSelected{
                    but.isSelected = false
                }
            }
         sender.isSelected = true
            interiorLabelOutlet.backgroundColor = sender.backgroundColor
                if interiorLabelOutlet.backgroundColor == UIColor.black{
                    interiorLabelOutlet.textColor = UIColor.white
                }
                    else{
                        interiorLabelOutlet.textColor = UIColor.black
                    }
        
            
        
    }
    

    @IBAction func tireButtonAction(_ sender: UIButton) {
         playSound(file: "tireSound.wav")
        for but in tireButtonsOutlet{
                   if but.isSelected{
                       but.isSelected = false
                   }
               }
               
             sender.isSelected = true
    }
    
    @IBAction func engineButtonAction(_ sender: UIButton) {
        playSound(file: "carPeelsOut.wav")
        for but in engineButtonsOutlet{
                   if but.isSelected{
                       but.isSelected = false
                   }
               }
               
             sender.isSelected = true
    }
    
}
    


