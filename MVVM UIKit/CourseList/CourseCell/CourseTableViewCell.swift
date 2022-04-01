//
//  CourseTableViewCell.swift
//  MVVM UIKit
//
//  Created by Олейник Богдан on 01.04.2022.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    var viewModel: CourseCellViewModelProtocol! {
        didSet {
            var content = defaultContentConfiguration()
            content.text = viewModel.courseName
            guard let imageData = viewModel.imageData else { return }
            content.image = UIImage(data: imageData)
            contentConfiguration = content
        }
    }
}
