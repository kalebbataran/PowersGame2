//
//  ViewController.swift
//  PowersGame
//
//  Created by Kaleb Bataran on 2/3/16.
//  Copyright © 2016 kaydot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	//Properties
	let maxPower = 15
	var base = 0
	var power = 0
	var total = 0
	
	//Outlets
	@IBOutlet weak var logoImg: UIImageView!
	@IBOutlet weak var howMuchPowerTxt: UITextField!
	@IBOutlet weak var playBtn: UIButton!
	
	@IBOutlet weak var equalsLbl: UILabel!
	@IBOutlet weak var tapBtn: UIButton!
	
	
	@IBAction func startGame(sender: UIButton) {
		
		resetGame()
		base = Int(howMuchPowerTxt.text!)!
	}
	
	@IBAction func morePower(sender: UIButton) {
		
		if power == 0 {
			total = 1
		} else {
			total *= base
		}
		
		equalsLbl.text = " \(base) ^ \(power++) = \(total)"

		if power > maxPower {
			howMuchPowerTxt.text = ""
			resetGame()
		}
	}
    
	func resetGame() {
		
		logoImg.hidden = !logoImg.hidden
		howMuchPowerTxt.hidden = !howMuchPowerTxt.hidden
		playBtn.hidden = !playBtn.hidden
		
		equalsLbl.hidden = !equalsLbl.hidden
		tapBtn.hidden = !tapBtn.hidden
		
		power = 0
		total = 0
		
		equalsLbl.text = "Tap Below"
	}
}

