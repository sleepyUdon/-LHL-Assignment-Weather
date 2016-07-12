//
//  CityViewController.h
//  Weather
//
//  Created by Viviane Chan on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "City.h"
#import "DetailedViewController.h"

@interface CityViewController : UIViewController

@property (nonatomic, strong) City *city;
@property NSLayoutConstraint *iconImageViewWidth;
@property NSLayoutConstraint *iconImageViewHeight;
@property (nonatomic, weak) UIView * iconImageView;




@end
