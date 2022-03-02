//
//  DomainRemoteDataSource.swift
//  Core
//
//  Created by Yusuf Umar Hanafi on 07/12/21.
//

import RxSwift

public protocol DomainRemoteDataSource {
    associatedtype Request
    associatedtype Response
    func execute(request: Request?) -> Observable<Response>
}
