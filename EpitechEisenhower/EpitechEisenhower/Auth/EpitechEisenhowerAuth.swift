//
//  EpitechEisenhowerAuth.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 28/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation
import FirebaseAuth

struct EpitechEisenhowerAuth {
    
}

extension EpitechEisenhowerAuth: EpitechEisenhowerAuthProtocol {
    func signInUser(email: String?, password: String?, completion: @escaping (ResultAuth) -> ()) {
        guard let email = email else {
            completion(ResultAuth.failure(ErrorAuth.emailIsNil))
            return
        }
        guard let password = password else {
            completion(ResultAuth.failure(ErrorAuth.passwordIsNil))
            return
        }
        guard email.isValidEmail else {
            completion(ResultAuth.failure(ErrorAuth.emailIsInvalid))
            return
        }
        Auth.auth().signIn(withEmail: email,
                           password: password,
                           completion: { (user, error) in
                            if let user = user {
                                completion(ResultAuth.success(user.email ?? "no email"))
                            } else if let error = error {
                                completion(ResultAuth.failure(error))
                            }
        })
    }
}

