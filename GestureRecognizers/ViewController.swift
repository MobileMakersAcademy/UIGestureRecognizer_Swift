//
//  ViewController.swift
//  GestureRecognizers
//
//  Created by Bruce Wayne on 12/10/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    var isBlue = true
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    @IBAction func changeBackgroundColorOnTapped(sender: UITapGestureRecognizer)
    {
        if isBlue == true
        {
            blueView.backgroundColor = UIColor.redColor()
            isBlue = false
        }
        else
        {
            blueView.backgroundColor = UIColor.blueColor()
            isBlue = true
        }

    }
    @IBAction func didStartPanningView(sender: UIPanGestureRecognizer)
    {
        var point = sender.locationInView(view)
        blueView.center = CGPointMake(point.x, point.y)
    }
}

