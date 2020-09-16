//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 15.09.2020.
//

import Foundation
import Dictionary

public class NamedEntityWord : Word{
    
    private var __namedEntityType: NamedEntityType

    /**
    A constructor of NamedEntityWord which takes name and nameEntityType as input and sets the corresponding
    attributes

    - Parameters:
        - name : Name of the word
        - namedEntityType : NamedEntityType of the word
    */
    public init(name: String, namedEntityType: NamedEntityType){
        self.__namedEntityType = namedEntityType
        super.init(name: name)
    }

    /**
    Accessor method for namedEntityType attribute.

    - Returns: namedEntityType of the word.
    */
    public func getNamedEntityType() -> NamedEntityType{
        return self.__namedEntityType
    }

}
