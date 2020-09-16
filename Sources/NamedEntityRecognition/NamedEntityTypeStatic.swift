//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 15.09.2020.
//

import Foundation

public class NamedEntityTypeStatic{
    
    /**
    Static function to convert a string entity type to NamedEntityType type.

    - Parameter entityType : Entity type in string form

    - Returns: Entity type in NamedEntityType form
    */
    public static func getNamedEntityType(entityType: String) -> NamedEntityType{
        for _type in NamedEntityType.allCases{
            if entityType == _type.rawValue{
                return _type
            }
        }
        return NamedEntityType.NONE
    }

    /**
    Static function to convert a NamedEntityType to string form.

    - Parameter namedEntityType : Entity type in NamedEntityType form

    - Returns: Entity type in string form
    */
    public static func getNamedEntityString(namedEntityType: NamedEntityType?) -> String{
        if namedEntityType == nil{
            return "NONE"
        }
        return namedEntityType!.rawValue
    }

}
