import Cocoa

typealias Velocity = Double

extension Velocity {
    var kph: Velocity {
        return self * 1.60934
    }
    
    var mph: Velocity {
        return self
    }
}
