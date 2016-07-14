//
//  DetailedViewController.m
//  Weather
//
//  Created by Viviane Chan on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@implementation DetailedViewController



- (void)viewDidLoad {
    
    UILabel *cityCurrentTime = [[UILabel alloc]initWithFrame:CGRectMake(50, 250, 200, 100)];
    
    cityCurrentTime.textColor = [UIColor whiteColor];
    cityCurrentTime.text =  [NSString stringWithFormat:(@"Time: %@"), self.cityDetails.currentTime];
    [self.view addSubview:cityCurrentTime];
    
    

    UILabel *cityCurrentTemperature = [[UILabel alloc]initWithFrame:CGRectMake(50, 300, 200, 100)];
    
    cityCurrentTemperature.textColor = [UIColor whiteColor];
    cityCurrentTemperature.text =  [NSString stringWithFormat:(@"Temperature: %@"), self.cityDetails.currentTemperature];
    [self.view addSubview:cityCurrentTemperature];
    
    

    UILabel *cityCurrentPrecipitation = [[UILabel alloc]initWithFrame:CGRectMake(50, 350, 400, 100)];
    
    cityCurrentPrecipitation.textColor = [UIColor whiteColor];
    cityCurrentPrecipitation.text =  [NSString stringWithFormat:(@"Chance of Precipitation: %@"), self.cityDetails.chanceOfPrecipitation];
    [self.view addSubview:cityCurrentPrecipitation];

    
}

@end

