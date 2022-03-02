//
//  UseCase.swift
//  Core
//
//  Created by Yusuf Umar Hanafi on 07/12/21.
//

import RxSwift

public protocol UseCase {
    associatedtype Request
    associatedtype Response
    func execute(request: Request?) -> Observable<Response>
}
