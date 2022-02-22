protocol GameBrainDelegate: AnyObject {}

final class GameBrain: GameBrainProtocol {
    weak var delegate: GameBrainDelegate?
}
