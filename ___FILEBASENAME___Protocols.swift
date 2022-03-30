//___FILEHEADER___


import UIKit

protocol ___VARIABLE_productName:identifier___ViewToPresenterProtocol: AnyObject {
    var view: ___VARIABLE_productName:identifier___PresenterToViewProtocol! { get set }
    var interactor: ___VARIABLE_productName:identifier___PresenterToInteractorProtocol! { get set }
    var router: ___VARIABLE_productName:identifier___PresenterToRouterProtocol! { get set }
}

protocol ___VARIABLE_productName:identifier___PresenterToViewProtocol: UIViewController {
    var presenter: ___VARIABLE_productName:identifier___ViewToPresenterProtocol! { get set }
}

protocol ___VARIABLE_productName:identifier___PresenterToInteractorProtocol: AnyObject {
    var presenter: ___VARIABLE_productName:identifier___InteractorToPresenterProtocol! { get set }
}

protocol ___VARIABLE_productName:identifier___InteractorToPresenterProtocol: AnyObject {
    
}

protocol ___VARIABLE_productName:identifier___PresenterToRouterProtocol: AnyObject {
    
}
