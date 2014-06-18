//
//  TBTViewController.m
//  BigMethod
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTPersonViewController.h"
#import "TBTPerson.h"

@interface TBTPersonViewController ()

@property (strong, nonatomic) TBTPerson *person;

@property (weak, nonatomic) IBOutlet UITextField *firstNameTF;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTF;
@property (weak, nonatomic) IBOutlet UITextField *occupationTF;
@property (weak, nonatomic) IBOutlet UITextField *streetAddressTF;
@property (weak, nonatomic) IBOutlet UITextField *cityTF;
@property (weak, nonatomic) IBOutlet UITextField *postalCodeTF;
@property (weak, nonatomic) IBOutlet UITextField *countryTF;
@property (weak, nonatomic) IBOutlet UITextField *emailAddress;
@property (weak, nonatomic) IBOutlet UITextField *telephoneTF;
@property (weak, nonatomic) IBOutlet UITextField *birthDateTF;

@end

@implementation TBTPersonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self getResources];
    [self updateDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Internals

- (void)getResources {
    self.person = [TBTPerson somePeople].firstObject;
}

- (void)updateDisplay {
    self.firstNameTF.text = self.person.firstName;
    self.lastNameTF.text = self.person.lastName;
    self.occupationTF.text = self.person.occupation;
    self.streetAddressTF.text = self.person.streetAddress;
    self.cityTF.text = self.person.city;
    self.postalCodeTF.text = self.person.postalCode;
    self.countryTF.text = self.person.country;
    self.emailAddress.text = self.person.emailAddress;
    self.telephoneTF.text = self.person.telephoneNumber;
    self.birthDateTF.text = [self.person.birthDate description];
}

@end
