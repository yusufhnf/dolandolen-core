//
//  Presenter.swift
//  Core
//
//  Created by Yusuf Umar Hanafi on 07/12/21.
//

import RxSwift

public class Presenter<Request, Response, Interactor: UseCase>
where Interactor.Request == Request, Interactor.Response == Response {
    private let _useCase: Interactor
    private let disposeBag = DisposeBag()
    public var item = PublishSubject<Response>()
    public var errorMessage = PublishSubject<String>()
    public var activityIndicatorState = PublishSubject<Bool>()
    public init(useCase: Interactor) {
        _useCase = useCase
    }
    public func execute(request: Request?) {
        activityIndicatorState.onNext(true)
        _useCase.execute(request: request)
            .observe(on: MainScheduler.instance)
            .subscribe { result in
                self.item.onNext(result)
            } onError: { error in
                self.errorMessage.onNext(error.localizedDescription)
            } onCompleted: {
                self.activityIndicatorState.onNext(false)
            }.disposed(by: disposeBag)
    }
}
