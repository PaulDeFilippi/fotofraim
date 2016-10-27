//
//  CameraVC.swift
//  fotofraim
//
//  Created by Paul Defilippi on 10/23/16.
//  Copyright © 2016 Paul Defilippi. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate {


    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var recordBtn: UIButton!
    @IBOutlet weak var previewView: AAPLPreviewView!
    
    
    override func viewDidLoad() {
        
        delegate = self
        _previewView = previewView
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        performSegue(withIdentifier: "LoginVC", sender: nil)
        //guard FIRAuth.auth()?.currentUser != nil else {
            //performSegue(withIdentifier: "LoginVC", sender: nil)
            //return
        //}
    }

    @IBAction func recordBtnPressed(_ sender: AnyObject) {
        toggleMovieRecording()
        
    }

    @IBAction func changeCameraBtnPressed(_ sender: AnyObject) {
        changeCamera()
        
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
        print("Shoulr enable camera UI: \(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
        print("Should enable record UI: \(enable)")
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }
    
    
}

