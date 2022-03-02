//
//  LocalDataSource.swift
//  Core
//
//  Created by Yusuf Umar Hanafi on 07/12/21.
//

import RxSwift

public protocol LocalDataSource {
    associatedtype Request
    associatedtype Response
    func getFavouritesData() -> Observable<[Response]>
    func addFavouriteGame(gameData: Response) -> Observable<Bool>
    func isFavoritedGame(idGame: String) -> Observable<Bool>
    func deleteFavouriteGame(idGame: String) -> Observable<Bool>
}
