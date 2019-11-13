//
//  CustomOperator.swift
//  2048
//
//  Created by siva krishna on 15/10/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import UIKit

precedencegroup ForwardApplication {
    associativity: left
}

infix operator |>: ForwardApplication

func |> <A,B>(x: A, f:(A) -> B) -> B {
    return f(x)
}
