//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 24.02.2021.
//

import Foundation

public class Slot{

    private var __type: SlotType
    private var __tag: String

    public init(type: SlotType, name: String){
        self.__tag = name
        self.__type = type
    }

    public init(slot: String){
        if slot == "O"{
            self.__type = SlotType.O
            self.__tag = ""
        } else {
            let items: [String] = slot.split(separator: "-").map(String.init)
            let type = items[0]
            let tag = items[1]
            if type == "B"{
                self.__type = SlotType.B
            } else {
                self.__type = SlotType.I
            }
            self.__tag = tag
        }
    }

    public func getType()-> SlotType{
        return self.__type
    }
    
    public func getTag()-> String{
        return self.__tag
    }
    
    public func description()-> String{
        switch (__type){
            case SlotType.O:
                return "O"
            case SlotType.B:
                return "B-" + __tag
            case SlotType.I:
                return "I-" + __tag
        }
    }
}
