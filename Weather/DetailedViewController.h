//
//  DetailedViewController.h
//  Weather
//
//  Created by Viviane Chan on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "City.h"

@class City;

@interface DetailedViewController : UIViewController

@property (nonatomic, strong) City *cityDetails;
@property (nonatomic, strong) UILabel *cityCurrentTime;



@end
