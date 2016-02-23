import Cocoa

enum Token {
    case Number(Int)
    case Plus
}

class Lexer {
    enum Error: ErrorType {
        case InvalidCharacter(Character)
    }
    
    let input: String.CharacterView
    var position: String.CharacterView.Index
    
    init(input: String) {
        self.input = input.characters
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        return input[position]
    }
    
    func advance() {
        assert(position < input.endIndex, "Cannot advance past the end!")
        position.advancedBy(1)
    }
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                // start of a number - need to grab the rest
                break
                
            case "+":
                tokens.append(.Plus)
                advance()
            
            case " ":
                // just advance to ignore spaces
                advance()
                
            default:
                throw Error.InvalidCharacter(nextCharacter)
            }
        }
        
        return tokens
    }
}
