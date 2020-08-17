//
//  WeekCVCell.swift
//  mytine
//
//  Created by 황수빈 on 2020/08/09.
//  Copyright © 2020 황수빈. All rights reserved.
//

import UIKit

class WeekCVCell: UICollectionViewCell {
    static let reuseIdentifier = "WeekCVCell"
    
    @IBOutlet var backView: UIView!
    @IBOutlet var rateCheckView: UIView!
    @IBOutlet var weekLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var routineCheckView: UIView!
    
    private let colors: [UIColor] = [#colorLiteral(red: 1, green: 0.2784313725, blue: 0.4588235294, alpha: 1), #colorLiteral(red: 1, green: 0.7411764706, blue: 0.1725490196, alpha: 1), #colorLiteral(red: 0, green: 0.9294117647, blue: 0.4588235294, alpha: 1)]
    private let weekList = ["월", "화", "수", "목", "금", "토", "일"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.viewRounded(cornerRadius: 4)
        routineCheckView.viewRounded(cornerRadius: 3)
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                backView.backgroundColor = .mainBlue
                routineCheckView.backgroundColor = .white
                weekLabel.textColor = .white
                dateLabel.textColor = .white
            } else {
                backView.backgroundColor = .white
                routineCheckView.backgroundColor = .mainBlue
                weekLabel.textColor = .subFont
                dateLabel.textColor = .mainFont
            }
        }
    }
    
    func bind(model: DayRootine, dayRoutineCount: Float, index: Int) {
        print(model)
        print("dayCount:::: \(dayRoutineCount)")
        print("modelCount:::: \(model.complete.count)")
        let rate: Float
        if dayRoutineCount == 0 {
            rate = Float(model.complete.count) / 1 * 100
        } else {
            rate = Float(model.complete.count) / dayRoutineCount * 100
        }
        print("rate:::: \(rate)")
        
        if rate < 50 {
            rateCheckView.backgroundColor = colors[0]
        } else if rate < 80 {
            rateCheckView.backgroundColor = colors[1]
        } else {
            rateCheckView.backgroundColor = colors[2]
        }
        weekLabel.text = weekList[index]
        dateLabel.text = String(model.id % 100)
        if !FMDBManager.shared.isDayRoutine(id: model.id) {
            _ = FMDBManager.shared.createDayRootine(rootine: model)
        }
        routineCheckView.isHidden = model.retrospect.isEmpty ? true : false
    }
}
