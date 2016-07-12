//
//  City.h
//  Weather
//
//  Created by Viviane Chan on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString *CityName;
@property NSString *weatherDescription;
@property UIImage *weatherIcon;

//detailed info (only accessible from detailed view controller)
@property (nonatomic, strong) NSString *currentTime; // stretch goal: make this NSStime?
@property (nonatomic, strong) NSString *currentTemperature;
@property (nonatomic, strong) NSString *chanceOfPrecipitation;

-(instancetype)initWithCityName:(NSString *)name WeatherDescription: (NSString *)weather weathericon: (UIImage *)icon currentTime:(NSString *)time currentTemperature: (NSString*) temperature chanceOfPrecipitation:(NSString *)precipitation;

@end
