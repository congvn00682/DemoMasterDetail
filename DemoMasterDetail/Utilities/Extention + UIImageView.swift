//
//  Extention + UIImageView.swift
//  DemoMasterDetail
//
//  Created by Vu Ngoc Cong on 4/16/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

extension UIImageView {
    func download(from urlString: String) {
        if let url = URL(string: urlString) {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        self.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}
