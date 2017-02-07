//
//  CAGradientLayer+Convience.swift
//  Calculator
//
//  Created by Hongyuan Jiang on 2/6/17.
//  Copyright © 2017 Hongyuan Jiang. All rights reserved.
//

import UIKit

extension CAGradientLayer {
    
    func blueColor() -> CAGradientLayer {
        let topColor = UIColor(red:(0/255.0),green:(31/255.0), blue: (146/255.0), alpha:1)
        let bottomColor = UIColor(red:(0/255.0), green:(157/255.0), blue: (195/255.0), alpha:1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float]=[0.0, 1.0]
        
        let gradientLayer:CAGradientLayer = CAGradientLayer ()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        return gradientLayer
    }
    
    
    
    func turquoiseColor() -> CAGradientLayer {
        let topColor = UIColor(red:(0/255.0),green:(31/255.0), blue: (146/255.0), alpha:1)
        let bottomColor = UIColor(red:(201/255.0), green:(109/255.0), blue: (206/255.0), alpha:1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float]=[0.0, 1.0]
        
        let gradientLayer:CAGradientLayer = CAGradientLayer ()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        return gradientLayer
    }
    
    func purpleColor() -> CAGradientLayer {
        let topColor = UIColor(red:(109/255.0),green:(5/255.0), blue: (103/255.0), alpha:1)
        let bottomColor = UIColor(red:(201/255.0), green:(109/255.0), blue: (216/255.0), alpha:1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float]=[0.0, 1.0]
        
        let gradientLayer:CAGradientLayer = CAGradientLayer ()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        return gradientLayer
    }
    
    
    func pinkColor() -> CAGradientLayer {
        let topColor = UIColor(red:(246/255.0),green:(64/255.0), blue: (107/255.0), alpha:1)
        let bottomColor = UIColor(red:(201/255.0), green:(109/255.0), blue: (216/255.0), alpha:1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float]=[0.0, 1.0]
        
        let gradientLayer:CAGradientLayer = CAGradientLayer ()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        return gradientLayer
    }
    
    func orangeColor() -> CAGradientLayer {
        let topColor = UIColor(red:(246/255.0),green:(64/255.0), blue: (107/255.0), alpha:1)
        let bottomColor = UIColor(red:(255/255.0), green:(224/255.0), blue: (147/255.0), alpha:1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float]=[0.0, 1.0]
        
        let gradientLayer:CAGradientLayer = CAGradientLayer ()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        return gradientLayer
    }
    
    

    
    
}
