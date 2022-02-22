import SpriteKit

enum GameComposer {
    static func makeScene() -> UIViewController {
        let viewController = GenericViewController()
        let scene = GameScene(size: Device.size)
        let view = GameView()
        let controllerManager = ControllerManager()
        let brain = GameBrain()
        let adapter = GameAdapter()

        adapter.viewController = viewController
        adapter.controllerManager = controllerManager
        adapter.view = view
        adapter.scene = scene
        adapter.brain = brain

        viewController.delegate = adapter
        controllerManager.delegate = adapter
        scene.gameDelegate = adapter
        brain.delegate = adapter
        view.gameScene = scene
        viewController.view = view

        return viewController
    }
}
