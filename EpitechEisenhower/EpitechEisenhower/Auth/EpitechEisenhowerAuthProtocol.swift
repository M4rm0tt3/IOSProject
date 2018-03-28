//
//  EpitechEisenhowerAuthProtocol.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 28/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation

enum ErrorAuth: Error {
    case emailIsNil
    case passwordIsNil
    case emailIsInvalid
}

enum ResultAuth {
    case success(String)
    case failure(Error)
}

protocol EpitechEisenhowerAuthProtocol {
    func signInUser(email: String?, password: String?, completion: @escaping (ResultAuth) -> ())
}
