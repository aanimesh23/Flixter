//
//  TrailerViewController.swift
//  Flix
//
//  Created by Animesh Agrawal on 1/27/20.
//  Copyright © 2020 Animesh Agrawal. All rights reserved.
//

import UIKit
import WebKit

class TrailerViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet var trailerWebView: WKWebView!
    var movie: [String:Any]!
    var vids = [[String:Any]]()
    var Key: String = ""
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        trailerWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        trailerWebView.uiDelegate = self
        view = trailerWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let movieId = String(describing: self.movie["id"] as! intmax_t)
        let baseURL = "https://api.themoviedb.org/3/movie/"
        let api_call = "/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"
        let trailerDataURL = URL(string: baseURL + movieId + api_call)!
        print(trailerDataURL)
        let url = trailerDataURL
               let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
               let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
               let task = session.dataTask(with: request) { (data, response, error) in
                  // This will run when the network request returns
                  if let error = error {
                     print(error.localizedDescription)
                  } else if let data = data {
                     let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                    
                    //print(dataDictionary["results"])
                    self.vids = dataDictionary["results"] as! [[String : Any]]
                    let vid = self.vids[0]
                    self.Key = vid["key"] as! String
                    print(self.Key)
                    let youtubeURL = "https://www.youtube.com/watch?v="
                    let myURL = URL(string: youtubeURL + self.Key)
                    let myRequest = URLRequest(url: myURL!)
                    self.trailerWebView.load(myRequest)
                      }
                   }
                   task.resume()
       
        
        
        
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
