//
//  String+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/8/21.
//

///
public extension String {
    
    ///
    func asErrorMessage () -> ErrorMessage {
        ErrorMessage(self)
    }
}
