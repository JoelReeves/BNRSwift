import Cocoa

var movieRatings = ["Fantastic Four": 2, "Lord of the Rings": 5, "The Dark Knight": 5]

print("I have rated \(movieRatings.count) movies")

let fantasticFourRating = movieRatings["Fantastic Four"]

movieRatings["Lord of the Rings"] = 3
movieRatings

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Lord of the Rings")
if let lastRating = oldRating, currentRating = movieRatings["Lord of the Rings"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

movieRatings["The Incredibles"] = 5

movieRatings.removeValueForKey("Fantastic Four") // returns the value removed
//movieRatings["Fantastic Four"] = nil   setting a key to nil can also remove from a dictionary
movieRatings

for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}

for movie in movieRatings.keys {
    print("I have rated \(movie)")
}

for rating in movieRatings.values {
    print("I have the ratings \(rating)")
}

let watchedMovies = Array(movieRatings.keys)
let ratings = Array(movieRatings.values)
