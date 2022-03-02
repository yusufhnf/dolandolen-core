//
//  LocaleMapper.swift
//  Core
//
//  Created by Yusuf Umar Hanafi on 07/12/21.
//

public protocol LocaleMapper {
    associatedtype Entity
    associatedtype Domain
    func transformEntityToDomain(entity: Entity) -> Domain
}
