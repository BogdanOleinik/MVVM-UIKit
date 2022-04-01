//
//  Person.swift
//  MVVM SwigtUI
//
//  Created by Олейник Богдан on 24.03.2022.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageUrl: URL
    let numberOfLessons: Int
    let numberOfTests: Int
}
