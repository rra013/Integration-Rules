//
//  ViewController.swift
//  Integration Rules
//
//  Created by Rishi Anand on 5/27/19.
//  Copyright © 2019 Rishi Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var questionNumber = 0
    var questionArray = ["Q1", "Q2", "Q3"]
    var answers = [["A11", "A12", "A13", "A14"], ["A21", "A22", "A23", "A24"], ["A31", "A32", "A33", "A34"]]
    var answerKey = [[0,0,1,0],[1,0,0,0],[0,1,0,0]]
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var DButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionLabel.text = questionArray[questionNumber]
        AButton.setTitle(answers[questionNumber][0], for: .normal)
        AButton.setTitleColor(UIColor.blue, for: .normal)
        BButton.setTitle(answers[questionNumber][1], for: .normal)
        BButton.setTitleColor(UIColor.blue, for: .normal)
        CButton.setTitle(answers[questionNumber][2], for: .normal)
        CButton.setTitleColor(UIColor.blue, for: .normal)
        DButton.setTitle(answers[questionNumber][3], for: .normal)
        AButton.setTitleColor(UIColor.blue, for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func NextButtonTapped(_ sender: Any) {
        questionNumber = questionNumber + 1//TODO: Randomize the QuestionNumber
        if(questionNumber >= questionArray.count){
            questionNumber = 0
        }
        QuestionLabel.text = questionArray[questionNumber]
        AButton.setTitle(answers[questionNumber][0], for: .normal)
        AButton.setTitleColor(UIColor.blue, for: .normal)
        BButton.setTitle(answers[questionNumber][1], for: .normal)
        BButton.setTitleColor(UIColor.blue, for: .normal)
        CButton.setTitle(answers[questionNumber][2], for: .normal)
        CButton.setTitleColor(UIColor.blue, for: .normal)
        DButton.setTitle(answers[questionNumber][3], for: .normal)
        AButton.setTitleColor(UIColor.blue, for: .normal)
    }
    
    @IBAction func ATapped(_ sender: Any) {
        if(answerKey[questionNumber][0] != 0){
            AButton.setTitleColor(UIColor.green, for: .normal)
            AButton.setTitle("Correct!", for: .normal)
        }
        else{
            AButton.setTitleColor(UIColor.red, for: .normal)
            AButton.setTitle("Incorrect!", for: .normal)        }
    }
    
    @IBAction func BClicked(_ sender: Any) {
        if(answerKey[questionNumber][1] != 0){
            BButton.setTitleColor(UIColor.green, for: .normal)
            BButton.setTitle("Correct!", for: .normal)
        }
        else{
            BButton.setTitleColor(UIColor.red, for: .normal)
            BButton.setTitle("Incorrect!", for: .normal)
        }
    }
    
    @IBAction func CClicked(_ sender: Any) {
        if(answerKey[questionNumber][2] != 0){
            CButton.setTitleColor(UIColor.green, for: .normal)
            CButton.setTitle("Correct!", for: .normal)
        }
        else{
            CButton.setTitleColor(UIColor.red, for: .normal)
            CButton.setTitle("Incorrect!", for: .normal)
        }
    }
    
    @IBAction func DClicked(_ sender: Any) {
        if(answerKey[questionNumber][3] != 0){
            DButton.setTitleColor(UIColor.green, for: .normal)
            DButton.setTitle("Correct!", for: .normal)
        }
        else{
            DButton.setTitleColor(UIColor.red, for: .normal)
            DButton.setTitle("Incorrect!", for: .normal)
        }
    }
    
    
}

