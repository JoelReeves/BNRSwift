import Cocoa

protocol ExerciseType {
    var name: String {get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}
