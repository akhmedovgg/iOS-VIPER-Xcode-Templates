//___FILEHEADER___


import Foundation
import Swinject

class ___VARIABLE_productName:identifier___Assembly: Assembly {
    func assemble(container: Container) {
        container.register(___VARIABLE_productName:identifier___ViewController.self) { resolver in
            let controller = ___VARIABLE_productName:identifier___ViewController()
            controller.presenter = resolver.resolve(___VARIABLE_productName:identifier___Presenter.self)
            return controller
        }
        
        container.register(___VARIABLE_productName:identifier___Presenter.self) { resolver in
            let presenter = ___VARIABLE_productName:identifier___Presenter()
            presenter.interactor = resolver.resolve(___VARIABLE_productName:identifier___Interactor.self)
            presenter.router = resolver.resolve(___VARIABLE_productName:identifier___Router.self)
            return presenter
        }.initCompleted { resolver, presenter in
            presenter.view = resolver.resolve(___VARIABLE_productName:identifier___ViewController.self)
        }
        
        container.register(___VARIABLE_productName:identifier___Interactor.self) { resolver in
            let interactor = ___VARIABLE_productName:identifier___Interactor()
            return interactor
        }.initCompleted { resolver, interactor in
            interactor.presenter = resolver.resolve(___VARIABLE_productName:identifier___Presenter.self)
        }
        
        container.register(___VARIABLE_productName:identifier___Router.self) { resolver in
            return ___VARIABLE_productName:identifier___Router()
        }
    }
}

extension ___VARIABLE_productName:identifier___Assembly {
    static func createContainer() -> Container {
        let container = Container()
        let assembly = ___VARIABLE_productName:identifier___Assembly()
        assembly.assemble(container: container)
        return container
    }
}
