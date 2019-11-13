//
//  Engine.swift
//  2048
//
//  Created by siva krishna on 15/10/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import UIKit

typealias Matrix = [[Int]]

enum Direction {
    case right
    case up
    case left
    case down
}

protocol Engine {
    func addNumber(_ board: Matrix) -> (newBoard: Matrix, addedTile: (Int, Int)?)
    func push(_ board: Matrix, to direction: Direction) -> (newBoard: Matrix, scoredPoints: Int)
    func isGameOver(_ board: Matrix) -> Bool
    var blankBoard: Matrix { get }
}
