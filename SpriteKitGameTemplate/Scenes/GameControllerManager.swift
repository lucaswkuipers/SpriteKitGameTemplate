import GameController

protocol ControllerManagerDelegate: AnyObject {}

final class ControllerManager {
    weak var delegate: ControllerManagerDelegate?
}

extension ControllerManager: GameControllerManagerProtocol {}
