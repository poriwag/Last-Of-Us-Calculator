//  MusicVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class MusicVC: UIViewController {
    
    let videosTableView = UITableView()
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupEntireUI()
    }
    
    fileprivate func setupEntireUI() {
        setBGImageForVC()
        configureNavigationBar()
        configureVideosTableView()
    }
    
    fileprivate func configureVideosTableView() {
        view.addSubview(videosTableView)
        videosTableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        
        videosTableView.backgroundColor = .clear
        videosTableView.rowHeight       = 80
        videosTableView.delegate        = self
        videosTableView.dataSource      = self
        
        videosTableView.removeExcessCells()
        videosTableView.register(VideoCell.self, forCellReuseIdentifier: VideoCell.reuseCellID)
    }
}

extension MusicVC: UITableViewDelegate {
    
    
}

extension MusicVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = videosTableView.dequeueReusableCell(withIdentifier: VideoCell.reuseCellID, for: indexPath) as! VideoCell
        let video = videos[indexPath.row]
        cell.setVideoCell(video: video)
        
        
//        let videoThumbnailURLString = "https://img.youtube.com/vi/" + videos[indexPath.row].id + YouTubeThumbnailType.mediumQuality
//
//        let videoThumbnailURL = URL(string: videoThumbnailURLString)
//
//        if videoThumbnailURL != nil {
//            let request = URLRequest(url: videoThumbnailURL!)
//            let session = URLSession.shared
//            let dataTask = session.dataTask(with: request) { (data, response, error) in
//                DispatchQueue.main.async {
//                    cell.videoImageView.image = UIImage(data: data!)
//                }
//            }
//            dataTask.resume()
//        }
        
        //cell.videoImageView.image = UIImage()
        return cell
    }
    

}
