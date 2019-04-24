//
//  HomeViewControler.swift
//  DemoBai4
//
//  Created by Nguyen Van Truong on 4/24/19.
//  Copyright © 2019 Truong Nguyen V. All rights reserved.
//

import UIKit

class HomeViewControler: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

         scrollView.contentSize = CGSize(width: 300 , height: 5000)

        let width = UIScreen.main.bounds.width / 3
        let heigh = UIScreen.main.bounds.height / 3

        for i in 0...10 {
            for j in 0...2 {
                if let customView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? CustomView {
                    customView.delegate = self
                    customView.frame = CGRect(x: CGFloat(j) * width, y: CGFloat(i) * heigh, width: 100, height: 130)
                    customView.name = "Name \(i*3 + j)"
                    scrollView.addSubview(customView)
                }
            }
        }


    }


}

extension HomeViewControler: CustomViewDelegate {
    func customViewDidClicked(name: String) {
        print("click" + name)
    }
}
