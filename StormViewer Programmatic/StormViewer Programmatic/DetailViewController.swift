//
//  DetailViewController.swift
//  StormViewer Programmatic
//
//  Created by Rahmetullah on 13.06.2022.
//
import SnapKit
import UIKit

class DetailViewController: UIViewController {
    var selectedImage: String?
let imageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage?.uppercased()
        navigationItem.largeTitleDisplayMode = .never
        
        configure()
        
    }
    
    func configure() {
        
        imageView.image = UIImage(named: selectedImage!)
        
        view.backgroundColor = .white
        view.addSubview(imageView)
       
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(250)
            make.left.right.equalToSuperview()
            make.width.equalTo(400)
            make.height.equalTo(350)
            
        }
        }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


