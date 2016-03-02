//
//  ViewController.m
//  Protobuf-ObjectiveC
//
//  Created by it on 1/3/2016.
//  Copyright © 2016 Vic. All rights reserved.
//

#import "ViewController.h"
#import "ProtoPerson.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
    person.id_p = 111;
    person.username = @"test";
    person.phone = @"111111";
    NSData *data = [person data];
    Person *p = [Person parseFromData:data error:nil];
    NSLog(@"person:%@",p);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
