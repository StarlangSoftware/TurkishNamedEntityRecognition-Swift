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
    
    /// Constructor for the Slot object. Slot object stores the information about more specific entities. The slot
    /// type represents the beginning, inside or outside the slot, whereas tag represents the entity tag of the
    /// slot.
    /// - Parameters:
    ///   - type: Type of the slot. B, I or O for beginning, inside, outside the slot respectively.
    ///   - name: Tag of the slot.
    public init(type: SlotType, name: String){
        self.__tag = name
        self.__type = type
    }
    
    /// Second constructor of the slot for a given slot string. A Slot string consists of slot type and slot tag
    /// separated with '-'. For example B-Person represents the beginning of a person. For outside tagging simple 'O' is
    /// used.
    /// - Parameter slot: Input slot string.
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
    
    /// Accessor for the type of the slot.
    /// - Returns: Type of the slot.
    public func getType()-> SlotType{
        return self.__type
    }
    
    /// Accessor for the tag of the slot.
    /// - Returns: descriptionTag of the slot.
    public func getTag()-> String{
        return self.__tag
    }
    
    /// description method of the slot.
    /// - Returns: Type and tag separated with '-'. If the type is outside, it returns 'O'.
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
