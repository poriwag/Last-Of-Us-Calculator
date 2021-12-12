//  VideoCell.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/24/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class VideoCell: UITableViewCell {
    
    let padding: CGFloat   = 12
    static let reuseCellID = "VideoCell"
    
    lazy var videoImageView = YTVideoImageView(frame: .zero)
    lazy var titleLabel     = LoUTitleLabel(textAlignment: .left, fontSize: 22)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }
    
    // function to set them in the cellForRow method
    func setVideoCell(video: Video) {
        // assign the text here and shit
        titleLabel.text = video.snippet.title
        videoImageView.downloadImage(from: video.snippet.thumbnails.url)
    }
    
    fileprivate func configureCell() {
        addSubviews(videoImageView, titleLabel)
        
        backgroundColor = LoUColors.backgroundCellColor
        selectionStyle  = .none
        
        setupCellImageView()
        setupCellTitleLabel()
    }
    
    fileprivate func setupCellImageView() {
        
        videoImageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: .none, padding: .init(top: 5, left: 5, bottom: 5, right: 0), size: .init(width: 120, height: 64))
        videoImageView.backgroundColor = .red
    }
    
    fileprivate func setupCellTitleLabel() {
        titleLabel.centerYInSuperview()
        titleLabel.anchor(top: .none, leading: videoImageView.trailingAnchor, bottom: .none, trailing: trailingAnchor, padding: .init(top: 0, left: padding, bottom: 0, right: padding), size: .init(width: 0, height: 40))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
