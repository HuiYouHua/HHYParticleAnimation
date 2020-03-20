//
//  ViewController.swift
//  HHYParticleAnimation
//
//  Created by 华惠友 on 2020/3/20.
//  Copyright © 2020 huayoyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Emitter {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startEmitter(CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height - 20))
    }


}

