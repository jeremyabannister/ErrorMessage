//
//  ErrorMessage.swift
//  
//
//  Created by Jeremy Bannister on 12/8/21.
//

///
public struct ErrorMessage: Hashable,
                            LocalizedError,
                            Codable,
                            CustomStringConvertible {
    
    ///
    public let message: String
    
    ///
    public init (_ message: String) {
        self.message = message
    }
    
    ///
    public init (_ error: Error) {
        self.init("\(error)")
    }
}

///
public extension ErrorMessage {
    
    ///
    static var blank: Self {
        .init("")
    }
}

///
public extension ErrorMessage {
    
    ///
    var errorDescription: String? {
        message
    }
}

///
public extension ErrorMessage {
    
    ///
    var description: String {
        message
    }
}
