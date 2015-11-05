/*
 PROGRAMMER: Giselle Pacheco
 PANTHERID: 2348330
 CLASS: COP4655
 INSTRUCTOR: Steve Luis
 ASSIGNMENT: HW4
 DUE: Oct 8
 */

#import <UIKit/UIKit.h>
#import "AddressBook.h"

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) AddressBook *addrBook;

-(IBAction)buttonNew:(id)sender;
-(IBAction)update:(id)sender;
-(IBAction)changeCards:(id)sender;


@end

