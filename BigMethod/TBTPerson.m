//
//  TBTPerson.m
//  BigMethod
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTPerson.h"

@implementation TBTPerson

+ (instancetype)personWithFirstName:(NSString *)firstName
                           lastName:(NSString *)lastName
                         occupation:(NSString *)occupation
                      streetAddress:(NSString *)streetAddress
                               city:(NSString *)city
                         postalCode:(NSString *)postalCode
                       emailAddress:(NSString *)emailAddress
                    telephoneNumber:(NSString *)telephoneNumber
                          birthDate:(NSDate *)birthDate {
    TBTPerson *p = [TBTPerson new];
    p.firstName = firstName;
    p.lastName = lastName;
    p.occupation = occupation;
    p.streetAddress = streetAddress;
    p.city = city;
    p.postalCode = postalCode;
    p.emailAddress = emailAddress;
    p.telephoneNumber = telephoneNumber;
    p.birthDate = birthDate;
    
    return p;
}

+ (NSArray *)somePeople {
    NSMutableArray *people = [NSMutableArray array];
    
    [people addObject:[TBTPerson personWithFirstName:@"Bob"
                                            lastName:@"Dobbs"
                                          occupation:@"Salesman"
                                       streetAddress:@""
                                                city:@"Dallas"
                                          postalCode:@""
                                        emailAddress:@""
                                     telephoneNumber:@""
                                           birthDate:nil]];
    
    [people addObject:[TBTPerson personWithFirstName:@"Newby"
                                            lastName:@"Newsson"
                                          occupation:@"Baby"
                                       streetAddress:@""
                                                city:@""
                                          postalCode:@""
                                        emailAddress:@""
                                     telephoneNumber:@""
                                           birthDate:[NSDate date]]];
    
    [people addObject:[TBTPerson personWithFirstName:@"Oldy"
                                            lastName:@"Olsson"
                                          occupation:@"Retired"
                                       streetAddress:@""
                                                city:@""
                                          postalCode:@""
                                        emailAddress:@""
                                     telephoneNumber:@""
                                           birthDate:[NSDate distantPast]]];
    
    [people addObject:[TBTPerson personWithFirstName:@"Unix"
                                            lastName:@"Epoch"
                                          occupation:@""
                                       streetAddress:@""
                                                city:@""
                                          postalCode:@""
                                        emailAddress:@""
                                     telephoneNumber:@""
                                           birthDate:[NSDate dateWithTimeIntervalSince1970:0]]];
    return people;
}

@end
