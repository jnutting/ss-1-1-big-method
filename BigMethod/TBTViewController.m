//
//  TBTViewController.m
//  BigMethod
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTViewController.h"
#import "TBTPerson.h"

@interface TBTViewController ()

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

@implementation TBTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.person = [TBTPerson somePeople].firstObject;
    
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
