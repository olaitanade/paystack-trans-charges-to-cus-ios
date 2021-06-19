//
//  PAYSTACKTRANSCHARGESTOCUS.swift
//  PAYSTACKTRANSCHARGESTOCUS
//
//  Created by Adetayo Olaitan on 19/06/2021.
//

import Foundation

public final class PAYSTACKTRANSCHARGESTOCUS {

    let name = "PAYSTACKTRANSCHARGESTOCUS"
    private let DECIMAL_FEE = 0.0150;
    private let FEE_CAP = 2000.00;
    private let FLAT_FEE = 100.00;
    
    public func calculateTotalPrice(amount: String) -> String {
        let amt:Double = Double(amount)!;
        if(amt<100.0){
            return String(Int(amt+1.0));
        }else if(amt<2500){
            return calculateFor2500Below(amount: amt);
        }else{
            return calculateFor2500Above(amount: amt);
        }
    }

    private func calculateFor2500Below(amount: Double) -> String{
        let applicableFees = DECIMAL_FEE * amount;
        if(applicableFees>FEE_CAP){
            return String(amount+FEE_CAP);
        }else{
            return String(Int(((amount)/(1-(DECIMAL_FEE)))+0.01));
        }
    }

    private func calculateFor2500Above(amount: Double) -> String{
            let applicableFees = (DECIMAL_FEE * amount)+FLAT_FEE;
            if(applicableFees>FEE_CAP){
                return String(amount+FEE_CAP);
            }else{
                return String(Int(((amount+FLAT_FEE)/(1-(DECIMAL_FEE)))+0.01));
            }
        }
    
}
