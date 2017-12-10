//
//  ViewController.swift
//  TraitCollectionSample
//
//  Created by Boominadha Prakash on 06/12/17.
//  Copyright © 2017 Boominadha Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - iVars
    private let screenSize = UIScreen.main.bounds.size
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1BottomConstraint: NSLayoutConstraint!
    
    //MARK: - Overridden functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateTraitCollection()
    }
    
    //MARK: - Private functions
    //if you want to enable the below code, enable the nameOfSizeClass function also
    private func updateTraitCollection() {
        debugPrint("Horizontal:\(nameOfSizeClass(traitCollection.horizontalSizeClass))")
        debugPrint("Vertical:\(nameOfSizeClass(traitCollection.verticalSizeClass))")
        
        if traitCollection.horizontalSizeClass == .compact && traitCollection.verticalSizeClass == .regular{
            button1BottomConstraint.constant = 20
        } else {
            button1BottomConstraint.constant = 20 * 2
        }
    }
    
    /* To check which size class you are in enable this code */
     private func nameOfSizeClass(_ sizeClass:UIUserInterfaceSizeClass) -> String {
        switch sizeClass {
        case .regular:
            return "Regular"
        case .compact:
            return "Compact"
        default:
            return "UnSpecified"
        }
    }
}

