import Cocoa

class Movie {
    var title = "Movie Title"
    var yearRelease  = 2016
    
    static func numberOfFrames() -> Int {
        return 24
    }
}


print("A movie has \(Movie.numberOfFrames()) frames per second")