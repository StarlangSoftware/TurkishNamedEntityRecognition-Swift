//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 15.09.2020.
//

import Foundation

public class Gazetteer{
    
    private var __data: Set<String>
    private var __name: String

    /**
    A constructor for a specific gazetteer. The constructor takes name of the gazetteer and file name of the
    gazetteer as input, reads the gazetteer from the input file.

    - Parameters:
        - name : Name of the gazetteer. This name will be used in programming to separate different gazetteers.
        - fileName : File name of the gazetteer data.
    */
    public init(name: String, fileName: String){
        self.__name = name
        self.__data = Set<String>()
        let url = Bundle.module.url(forResource: fileName, withExtension: "txt")
        do{
            let fileContent = try String(contentsOf: url!, encoding: .utf8)
            let lines : [String] = fileContent.split(whereSeparator: \.isNewline).map(String.init)
            for line in lines{
                self.__data.insert(line)
            }
        }catch{
        }
    }

    /**
    Accessor method for the name of the gazetteer.

    - Returns: Name of the gazetteer.
    */
    public func getName() -> String{
        return self.__name
    }

    /**
    The most important method in Gazetteer class. Checks if the given word exists in the gazetteer. The check
    is done in lowercase form.

    - Parameter word : Word to be search in Gazetteer.

    - Returns: True if the word is in the Gazetteer, False otherwise.
    */
    public func contains(word: String) -> Bool{
        return self.__data.contains(word.lowercased(with: Locale(identifier: "tr")))
    }

}
