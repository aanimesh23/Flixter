//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Animesh Agrawal on 1/25/20.
//  Copyright © 2020 Animesh Agrawal. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        titleLabel.text = movie["title"] as! String
        titleLabel.sizeToFit()
        titleLabel.textAlignment = .center
        synopsisLabel.text = movie["overview"] as! String
        synopsisLabel.sizeToFit()
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let backdropPath = movie["backdrop_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)!
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
        
        posterView.af_setImage(withURL: posterURL)
        backdropView.af_setImage(withURL: backdropURL)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
