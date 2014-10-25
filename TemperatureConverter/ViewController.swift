//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by YCS on 25/10/14.
//  Copyright (c) 2014 ycswaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: UISlider) {
        self.updateTemperatureDisplays()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureSlider.maximumValue = 100
        temperatureSlider.minimumValue = 0
        temperatureSlider.value = 30
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        let titleHeight = 21.0
//        let sideMargin = 16.0
//        var titleWidth = Double(screen.bounds.width) - 2 * sideMargin
//        
//        titleLabel.frame = CGRect(x: sideMargin, y: Double(topLayoutGuide.length + 10), width: titleWidth, height: titleHeight)
//        
//        // Always return the size of the screen in portraits orientation
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        // Since ios8, this is the size of the screen in its current orientation
//        println("screen bounds: \(screen.bounds)")
//        
//        println("top layout guide: \(topLayoutGuide.length)")
//    }
    
    func updateTemperatureDisplays() {
        celsiusLabel.text = String(format: "%.1fC", temperatureSlider.value)
        fahrenheitLabel.text = String(format: "%.1fF", temperatureSlider.value*9/5+32)
        kelvinLabel.text = String(format: "%.1fK", temperatureSlider.value+273.15)
    }
}

