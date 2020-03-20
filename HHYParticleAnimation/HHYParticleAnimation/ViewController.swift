//
//  ViewController.swift
//  HHYParticleAnimation
//
//  Created by 华惠友 on 2020/3/20.
//  Copyright © 2020 huayoyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // 1.创建发射器
        let emitter = CAEmitterLayer()
        
        // 2.设置发射器的位置
        emitter.emitterPosition = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height - 20)
        
        // 3.开启三维效果
        emitter.preservesDepth = true
        
        // 4.创建粒子,并设置粒子相关的属性
        // 4.1.创建粒子
        let cell = CAEmitterCell()
        
        // 4.2.设置粒子的速度
        cell.velocity = 150
        // 粒子速度范围 50 - 250
        cell.velocityRange = 100
        
        // 4.3.设置粒子的大小
        cell.scale = 0.7
        cell.scaleRange = 0.3
        
        // 4.4.设置粒子方向
        cell.emissionLongitude = CGFloat(-(Double.pi / 2)) // 往上
        cell.emissionRange = CGFloat(Double.pi / 12)
        
        // 4.5.设置粒子的存活时间
        cell.lifetime = 3
        cell.lifetimeRange = 1.5
        
        // 4.6.设置粒子每秒弹出的个数
        cell.birthRate = 10
        
        // 4.6.设置粒子旋转
        cell.spin = CGFloat(CGFloat.pi / 2)
        cell.spinRange = CGFloat(CGFloat.pi / 4)
        
        // 4.8.设置粒子的展示图片
        cell.contents = UIImage(named: "good6_30x30")?.cgImage
        
        // 5.将粒子设置到发射器中
        emitter.emitterCells = [cell]
        
        view.layer.addSublayer(emitter)
    }


}

