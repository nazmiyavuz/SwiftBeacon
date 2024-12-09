//
//  LogLevel.swift
//  Pods
//
//  Created by Nazmi Yavuz on 9.12.2024.
//

import Foundation

public enum LogLevel {
    case trace
    case debug
    case info
    case notice
    case warning
    case error
    case critical
    case fault
    
    var prefix: String {
        switch self {
        
        case .trace:    return "LOGGER.TRACE 🟣"
        case .debug:    return "LOGGER.DEBUG 🔵"
        case .info:     return "LOGGER.INFO 🟢"
        case .notice:   return "LOGGER.NOTICE ⚪️"
        case .warning:  return "LOGGER.WARNING 🟠"
        case .error:    return "LOGGER.ERROR 🔴"
        case .critical: return "LOGGER.CRITICAL ❗️🧨 ♥️"
        case .fault:    return "LOGGER.FAULT ‼️💥💔"
        }
    }
}
