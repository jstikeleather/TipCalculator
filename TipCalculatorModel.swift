//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Jennifer Stikeleather on 4/29/15.
//  Copyright (c) 2015 Jennifer Stikeleather. All rights reserved.
//

import Foundation

class TipCalculator {
    
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
          return total / (taxPct + 1)
        }
    }
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }

    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]

        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
    
}