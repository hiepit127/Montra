//
//  Configuration.swift
//  montraID
//
//  Created by Apple on 06/10/2021.
//

import Foundation
protocol Configuration {
    func configure()
}

struct DefaultConfiguration : Configuration {
    
    fileprivate var configurations: [Configuration]
    
    init() {
        self.configurations = []
    }
    
    init(_value: Configuration...) {
        self.configurations = _value
    }
    
    func configure() {
        self.configurations.forEach{$0.configure()}
    }
    mutating func remove(){
        self.configurations.removeAll()
    }
    mutating func add(_ configuration: Configuration) {
        self.configurations.append(configuration)
    }
    
}
