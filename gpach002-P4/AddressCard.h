/*
 PROGRAMMER: Giselle Pacheco
 PANTHERID: 2348330
 CLASS: COP4655
 INSTRUCTOR: Steve Luis
 ASSIGNMENT: HW4
 DUE: Oct 8
 */
#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCopying, NSCoding>

@property (nonatomic, copy) NSString *name, *email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) assignName: (NSString *) theName andEmail: (NSString *) theEmail;
-(NSComparisonResult) compareNames: (id) element;

-(void) print;

@end