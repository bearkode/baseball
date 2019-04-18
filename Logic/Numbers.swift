//
//  Numbers.swift
//  Logic
//
//  Created by bearkode on 15/04/2019.
//  Copyright © 2019 bearkode. All rights reserved.
//

import Foundation


public struct Numbers {
    
    init?(_ values: [UInt]) {
        guard validate(values) else {
            return nil
        }

        self.values = values
    }
    
    var values: [UInt]
    
}


func validate(_ values: [UInt]) -> Bool {
    return (values.count == 4 && Set<UInt>(values).count == values.count && values.filter{ $0 > 9 }.count == 0)
}
