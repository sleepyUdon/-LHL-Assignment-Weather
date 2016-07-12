//
//  City.m
//  Weather
//
//  Created by Viviane Chan on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype)initWithCityName:(NSString *)name WeatherDescription: (NSString *)weather weathericon: (UIImage *)icon currentTime:(NSString *)time currentTemperature: (NSString*) temperature chanceOfPrecipitation:(NSString *)precipitation{

    if (self = [super init]) {
        
        _CityName = name;
        _weatherDescription = weather;
        _currentTime = time;
        _weatherIcon = icon;
        _currentTime = time;
        _currentTemperature = temperature;
        _chanceOfPrecipitation = precipitation;
    }
    return self;
}

@end
