// Copyright 2017 Brightec
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

class CollectionViewController: UIViewController {

    let contentCellIdentifier = "ContentCellIdentifier"

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "ContentCollectionViewCell", bundle: nil),
                                forCellWithReuseIdentifier: contentCellIdentifier)
    }

}

// MARK: - UICollectionViewDataSource
extension CollectionViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 50
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // swiftlint:disable force_cast
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: contentCellIdentifier,
                                                      for: indexPath) as! ContentCollectionViewCell

        if indexPath.section % 2 != 0 {
            cell.backgroundColor = UIColor(white: 242/255.0, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.white
        }

        if indexPath.section == 0 {
            if indexPath.row == 0 {
                cell.contentLabel.text = "Date"
            } else {
                cell.contentLabel.text = "Section"
            }
        } else {
            if indexPath.row == 0 {
                cell.contentLabel.text = String(indexPath.section)
            } else {
                cell.contentLabel.text = "Content"
            }
        }
        if indexPath.section == 0 && indexPath.row == 0
        {
             cell.contentLabel.text = "Section1"
        }
        if indexPath.section == 0 && indexPath.row == 1
        {
            cell.contentLabel.text = "Section2"
        }
//        if indexPath.section == 2
//        {
//            cell.contentLabel.text = "Section3"
//        }
//        if indexPath.section == 3
//        {
//            cell.contentLabel.text = "Section4"
//        }
//        if indexPath.section == 4
//        {
//            cell.contentLabel.text = "Section5"
//        }
//        if indexPath.section == 5
//        {
//            cell.contentLabel.text = "Section6"
//        }
//        if indexPath.section == 6
//        {
//            cell.contentLabel.text = "Section7"
//        }
//        if indexPath.section == 7
//        {
//            cell.contentLabel.text = "Section8x"
//        }

        return cell
    }

}

// MARK: - UICollectionViewDelegate
extension CollectionViewController: UICollectionViewDelegate {

}
