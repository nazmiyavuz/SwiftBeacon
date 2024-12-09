//
//  ViewController.swift
//  SwiftBeacon
//
//  Created by nazmiyavuz on 12/09/2024.
//  Copyright (c) 2024 nazmiyavuz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        logger.trace("Trace example")
        logger.debug("Debug example")
        logger.info("Info example")
        logger.notice("Notice example")
        logger.warning("Warning example")
        logger.error("Error example")
        logger.critical("Critical example")
        logger.fault("Fault example")
    }
}

