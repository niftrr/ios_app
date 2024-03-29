//
//  RadioViewController.swift
//  VimeoPlaylist2
//
//  Created by Michael Gordon on 11/08/2015.
//  Copyright (c) 2015 Personal. All rights reserved.
//

import UIKit

class RadioViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = false
        
        
        self.edgesForExtendedLayout = UIRectEdge.None
        

        // Do any additional setup after loading the view.
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let width = screenSize.width - 100
        
        // Add Title
        let title = UILabel()
        title.text = "Radio"
        title.textAlignment = .Center
        title.frame = CGRectMake(50, 33, width, 44)
        title.textColor = UIColor.darkGrayColor()
        title.font =  UIFont(name: "Avenir Book", size: 20)
        self.view.addSubview(title)
        
        // Buttons
        var radioChannels = [
            ["name": "Rock", "title": "Rock"],
            ["name": "Pop", "title": "Pop"],
            ["name": "IndieAlternative", "title": "Indie/Alternative"],
            ["name": "ElectronicEDM", "title": "Electronic/EDM"],
            ["name": "HipHop", "title": "Hip Hop"],
            ["name": "RnBSoul", "title": "RnB Soul"],
            ["name": "Folk", "title": "Folk"],
            ["name": "Reggae", "title": "Reggae"],
            ["name": "Latin", "title": "Latin"],
            ["name": "Jazz", "title": "Jazz"]
//            ["name": "Party", "title": "Party"],
//            ["name": "Relax", "title": "Relax"],
//            ["name": "Travel", "title": "Travel"],
//            ["name": "LoveRomantic", "title": "Love/Romantic"],
//            ["name": "Workout", "title": "Workout"],
//            ["name": "Focus", "title": "Focus"],
//            ["name": "Dinner", "title": "Dinner"],
//            ["name": "Happy", "title": "Happy"],
//            ["name": "Sleep", "title": "Sleep"],
//            ["name": "Chill", "title": "Chill"]
        ]
        
        let sideLength = (screenSize.width - 52) / 2
        println(sideLength)
        
        for (index, value) in enumerate(radioChannels)
        {
            var radioChannel = radioChannels[index]
            var imageName = radioChannel["name"] as String!
            var buttonName = radioChannel["title"] as String!
            var actionName = "didTap" + buttonName + ":"
            
            //var x:GCFloat = 0.0
            //var multiplier:Float = 0.0
            
//            if (index % 2 == 0)
//            {
//                var x = CGFloat(4)
//                var multiplier = index / 2
//            }
//            else {
//                var x = sideLength + CGFloat(8)
//                var multiplier = (index - 1) / 2
//            }
            
            var x: CGFloat? {
                get {
                    if (index % 2 == 0) {
                        return CGFloat(24)
                    } else {
                        return sideLength + CGFloat(28)
                    }
                }
            }
            
            var multiplier: Int {
                get {
                    if (index % 2 == 0) {
                        return index / 2
                    } else {
                        return (index - 1) / 2
                    }
                }
            }
            
            var y = CGFloat(88 + (sideLength + 4) * CGFloat(multiplier))
            
            let myButton = UIButton()
            
            myButton.setTitle("\(buttonName)", forState: .Normal)
            myButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            myButton.titleLabel!.font = UIFont(name: "Avenir Book", size: 16)
            myButton.titleEdgeInsets = UIEdgeInsetsMake(105,-120,0,0)
            
            //myButton.setBackgroundImage(UIImage(named: imageName), forState: UIControlState.Normal)
            myButton.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
            myButton.backgroundColor = UIColor(red: 214/255, green: 73/255, blue: 56/255, alpha: 1.0)
            myButton.imageEdgeInsets = UIEdgeInsetsMake(25,25,40,25)
            //myButton.imageEdgeInsets = UIEdgeInsetsMake(25,25,25,25)
            
            myButton.frame = CGRectMake(x!, y, sideLength, sideLength)
            myButton.addTarget(self, action: Selector(actionName), forControlEvents: .TouchUpInside)
            self.view.addSubview(myButton)
            
        }

    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
//        self.navigationController?.setNavigationBarHidden((true), animated: false)
//        
//        self.navigationController!.navigationBar.barTintColor = UIColor(red: 85/255, green: 20/255, blue: 17/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapRock(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Rock"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapPop(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Pop"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    @IBAction func didTapIndieAlternative(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "IndieAlternative"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapElectronicEDM(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "ElectronicEDM"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapHipHop(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "HipHop"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapRnBSoul(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "RnBSoul"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapFolk(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Folk"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapReggae(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Reggae"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapLatin(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Latin"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapJazz(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Jazz"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapParty(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Party"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapRelax(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Relax"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapTravel(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Travel"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapLoveRomantic(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "LoveRomantic"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapWorkout(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Workout"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapFocus(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Focus"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapDinner(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Dinner"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapHappy(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Happy"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapSleep(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Sleep"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapChill(sender: AnyObject)
    {
        var viewController = SearchResponseViewController(nibName: "SearchResponseViewController", bundle: nil)
        viewController.searchRequest = "Chill"
        viewController.requester = "radio"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
