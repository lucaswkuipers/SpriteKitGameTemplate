import GameController
import SpriteKit

// MARK: - Protocols

protocol GameViewControllerProtocol: UIViewController {}
protocol GameViewProtocol: UIView {}
protocol GameSceneProtocol: SKScene {}
protocol GameControllerManagerProtocol {}
protocol GameBrainProtocol {}

// MARK: - Adapter

final class GameAdapter: NSObject {
    var viewController: GameViewControllerProtocol?
    var controllerManager: GameControllerManagerProtocol?
    var view: GameViewProtocol?
    var scene: GameSceneProtocol?
    var brain: GameBrainProtocol?
}

// MARK: - Extensions

extension GameAdapter: GenericViewControllerDelegate {}
extension GameAdapter: ControllerManagerDelegate {}
extension GameAdapter: GameViewDelegate {}
extension GameAdapter: GameBrainDelegate {}
extension GameAdapter: GameSceneDelegate {}
