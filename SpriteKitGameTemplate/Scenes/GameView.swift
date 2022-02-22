import SpriteKit

protocol GameViewDelegate: AnyObject {}

final class GameView: SKView {
    weak var gameDelegate: GameViewDelegate?

    var gameScene: GameSceneProtocol? {
        didSet {
            backgroundColor = .purple
            presentScene()
        }
    }

    init() {
        super.init(frame: Device.bounds)
        setupPreferences()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func presentScene() {
        presentScene(gameScene)
    }

    private func setupPreferences() {
        preferredFramesPerSecond = 120

        #if DEBUG
        showsDrawCount = true
        ignoresSiblingOrder = true
        showsFPS = true
        showsNodeCount = true
        showsFields = true
        showsPhysics = true
        showsQuadCount = true
        #endif
    }
}

extension GameView: GameViewProtocol {}
