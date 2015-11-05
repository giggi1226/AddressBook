/*
 PROGRAMMER: Giselle Pacheco
 PANTHERID: 2348330
 CLASS: COP4655
 INSTRUCTOR: Steve Luis
 ASSIGNMENT: HW4
 DUE: Oct 8
 */
#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook: NSObject <NSCopying, NSCoding>

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(id) initWithName: (NSString *) name;
-(void) sort;
-(void) sort2;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard; -(NSUInteger) entries;
-(void) list;
-(AddressCard *) lookup: (NSString *) theName;
-(NSUInteger) entries;
-(AddressCard *) getCard: (int) current;

@end