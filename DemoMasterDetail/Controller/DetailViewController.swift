//
//  DetailViewController.swift
//  DemoMasterDetail
//
//  Created by Vu Ngoc Cong on 4/14/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIImagePickerControllerDelegate ,UIScrollViewDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textFieldInput: UITextField!
    
    var receiveMeal: Meal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.3
        scrollView.maximumZoomScale = 1
        if let dataMeal = receiveMeal {
            textFieldInput.text = dataMeal.dateMeal
            imageView.image = dataMeal.photoMeal
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getCurrentDateTime()
    }
    
    func getCurrentDateTime() {
        let formater = DateFormatter()
        formater.dateFormat = "EEEE, MMMM, dd, yyyy HH:mm a"
        let getDate = formater.string(from: Date())
        textFieldInput.text = getDate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.image = selectImage
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectImageView(_ sender: UITapGestureRecognizer) {
        let selectedImageView = UIImagePickerController()
        selectedImageView.delegate = self
        selectedImageView.sourceType = .photoLibrary
        present(selectedImageView, animated: true, completion: nil)
    }
    
   
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        imageView.sizeToFit()
        scrollView.contentSize = imageView.frame.size
        return imageView
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let text = textFieldInput.text
        let photo = imageView.image
        receiveMeal = Meal(dateMeal: text ?? "", photoMeal: photo)
        
    }
    
}

