//
//  JSON.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class JSON {
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    
    class var shared: JSON {
        struct Static {
            static let instance: JSON = JSON()
        }
        return Static.instance
    }
    
    init() {
        decoder.dateDecodingStrategy = .customISO08601
        encoder.dateEncodingStrategy = .formatted(Formatter.iso8601)
    }
    
    func decode<T>(_ type: T.Type, from data: Data) throws -> T where T: Decodable {
        return try decoder.decode(type, from: data)
    }
    
    func encode<T>(_ value: T) throws -> Data where T: Encodable {
        return try encoder.encode(value)
    }
}

extension JSONDecoder.DateDecodingStrategy {
    static let customISO08601 = custom { decoder throws -> Date in
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)
        if let date = Formatter.iso8601.date(from: string) ?? Formatter.iso8601noFS.date(from: string) {
            return date
        }
        
        throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid date: \(string)")
        
    }
}

