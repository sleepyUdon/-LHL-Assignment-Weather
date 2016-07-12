//
//  CityViewController.m
//  Weather
//
//  Created by Viviane Chan on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"

@implementation CityViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *iconImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    
    iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    iconImageView.translatesAutoresizingMaskIntoConstraints = NO;

    [iconImageView setImage:self.city.weatherIcon];

    [self.view addSubview:iconImageView];
    
    DetailedViewController *detailViewController = [[DetailedViewController alloc]init];
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:detailViewController];


    
    NSLayoutConstraint *iconImageViewYPosition = [NSLayoutConstraint constraintWithItem:iconImageView
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeBottom
                                                                        multiplier:0.25
                                                                          constant:0.0];
    
    NSLayoutConstraint *iconImageViewXPosition = [NSLayoutConstraint constraintWithItem:iconImageView
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier: 1.0
                                                                          constant:0.0];
    
    NSLayoutConstraint *iconImageViewHeight = [NSLayoutConstraint constraintWithItem:iconImageView
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:100];
    
    NSLayoutConstraint *iconImageViewWidth = [NSLayoutConstraint constraintWithItem:iconImageView
                                                                     attribute:NSLayoutAttributeWidth
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:nil
                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                    multiplier:1.0
                                                                      constant:100];

    
    [self.view addConstraint:iconImageViewWidth];
    [self.view addConstraint:iconImageViewYPosition];
    [self.view addConstraint:iconImageViewXPosition];
    [self.view addConstraint:iconImageViewHeight];

    //City name label
    UILabel *cityName = [[UILabel alloc]initWithFrame:CGRectZero];
    
    cityName.textColor = [UIColor whiteColor];
    cityName.text = self.city.CityName;
    [self.view addSubview:cityName];
    cityName.translatesAutoresizingMaskIntoConstraints = NO;
    [cityName setTextAlignment:NSTextAlignmentCenter];


    NSLayoutConstraint *cityNameYPosition = [NSLayoutConstraint constraintWithItem:cityName
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeBottom
                                                                        multiplier:0.5
                                                                          constant:0.0];
    
    NSLayoutConstraint *cityNameXPosition = [NSLayoutConstraint constraintWithItem:cityName
                                                                             attribute:NSLayoutAttributeCenterX
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeCenterX
                                                                                multiplier: 1.0
                                                                              constant:0.0];
    
    NSLayoutConstraint *cityNameHeight = [NSLayoutConstraint constraintWithItem:cityName
                                                                          attribute:NSLayoutAttributeHeight
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:nil
                                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                                         multiplier:1.0
                                                                           constant:30];
    
    NSLayoutConstraint *cityNameWidth = [NSLayoutConstraint constraintWithItem:cityName
                                                                         attribute:NSLayoutAttributeWidth
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:200];
    [self.view addConstraint:cityNameWidth];
    [self.view addConstraint:cityNameYPosition];
    [self.view addConstraint:cityNameXPosition];
    [self.view addConstraint:cityNameHeight];

    //City details button

    UIButton *detailedView = [[UIButton alloc]initWithFrame:CGRectZero];
    [detailedView setTitle:@"Details" forState:UIControlStateNormal];
    detailedView.userInteractionEnabled = YES;
    [self.view addSubview:detailedView];
    detailedView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;

    detailedView.translatesAutoresizingMaskIntoConstraints = NO;

    
    NSLayoutConstraint *detailedViewYPosition = [NSLayoutConstraint constraintWithItem:detailedView
                                                                               attribute:NSLayoutAttributeCenterY
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.view
                                                                               attribute:NSLayoutAttributeBottom
                                                                              multiplier:0.75
                                                                                constant:0.0];
    
    NSLayoutConstraint *detailedViewXPosition = [NSLayoutConstraint constraintWithItem:detailedView
                                                                          attribute:NSLayoutAttributeCenterX
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.view
                                                                          attribute:NSLayoutAttributeCenterX
                                                                         multiplier:1.0
                                                                           constant:0.00];

    NSLayoutConstraint *detailedViewHeight = [NSLayoutConstraint constraintWithItem:detailedView
                                                                               attribute:NSLayoutAttributeHeight
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:nil
                                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                                              multiplier:1.0
                                                                                constant:30];
    
    NSLayoutConstraint *detailedViewWidth = [NSLayoutConstraint constraintWithItem:detailedView
                                                                              attribute:NSLayoutAttributeWidth
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:nil
                                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                                             multiplier:1.0
                                                                               constant:200];
    [self.view addConstraint:detailedViewWidth];
    [self.view addConstraint:detailedViewYPosition];
    [self.view addConstraint:detailedViewXPosition];
    [self.view addConstraint:detailedViewHeight];

    [detailedView addTarget:self action:@selector(showWeatherDetails:) forControlEvents:UIControlEventTouchUpInside];
    
    }


- (void) showWeatherDetails:(City*)city {
    NSLog(@"ok");
    DetailedViewController* detailedViewController = [[DetailedViewController alloc]init];
    
    detailedViewController.cityDetails = city;
    
    [self.navigationController pushViewController:detailedViewController animated:YES];
    
    
}




@end
