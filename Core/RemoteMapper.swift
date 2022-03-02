//
//  RemoteMapper.swift
//  Core
//
//  Created by Yusuf Umar Hanafi on 07/12/21.
//

public protocol RemoteMapper {
    associatedtype Response
    associatedtype Domain
    func transformResponseToDomain(response: Response) -> Domain
}
