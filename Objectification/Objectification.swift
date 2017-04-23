//
//  Objectification.swift
//  Objectification
//
//  Created by YiSeungyoun on 2017. 4. 23..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import Foundation

public enum ObjectificationType {
    case properties
    case values
    case all
}

public class Objectification {
    private var objects: [Any]?
    
    public init(objects: [Any], type: ObjectificationType) {
        let mirror = Mirror(reflecting: objects)
        
        switch type {
        case .properties:
            
            break
        case .values:
            break
        case .all:
            break
        default:
            break
        }
        self.objects = objects
    }
    
    public func objects(contain string:String) -> [Any] {
        
        return self.objects!
    }
}
