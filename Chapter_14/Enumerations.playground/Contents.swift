import Cocoa

enum TextAlignment {
    case Left
    case Right
    case Center
    case Justify
}

var alignment = TextAlignment.Justify

switch alignment {
case .Left:
    print("left aligned")
case .Right:
    print("right aligned")
case .Center:
    print("center aligned")
case .Justify:
    print("justified")
}
