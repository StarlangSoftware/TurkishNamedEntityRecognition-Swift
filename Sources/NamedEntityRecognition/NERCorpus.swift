//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 15.09.2020.
//

import Foundation
import Corpus

public class NERCorpus : Corpus{
    
    /**
    Another constructor of NERCorpus which takes a fileName of the corpus as an input, reads the
    corpus from that file.

    - Parameter fileName : Name of the corpus file.
    */
    public override init(fileName : String){
        super.init()
        let url = Bundle.module.url(forResource: fileName, withExtension: "txt")
        do{
            let fileContent = try String(contentsOf: url!, encoding: .utf8)
            let lines : [String] = fileContent.split(whereSeparator: \.isNewline).map(String.init)
            for line in lines{
                self.addSentence(s: NamedEntitySentence(sentence: line))
            }
        }catch{
        }
    }

    /**
    addSentence adds a new sentence to the sentences list

    - Parameter s : Sentence to be added.
    */
    public func addSentence(s: NamedEntitySentence){
        self.sentences.append(s)
    }

}
