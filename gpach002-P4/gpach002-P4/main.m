//
//  main.m
//  gpach002-P4
//
//  Created by giselle pacheco on 10/7/15.
//  Copyright (c) 2015 classroomM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AddressBook.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSString *name = @"gigi";
        NSString *email = @"gpach002@fiu.edu";
        
        AddressCard *card1 = [[AddressCard alloc]init];
        
        [card1 setName:name andEmail:email];
        //[card1 print];
        
        name = @"giselle";
        email = @"gpach002@fiu.edu";
        
        AddressCard *card2 = [[AddressCard alloc]init];
        
        [card2 setName:name andEmail:email];
        //[card2 print];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
