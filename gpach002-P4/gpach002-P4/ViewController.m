/*
 PROGRAMMER: Giselle Pacheco
 PANTHERID: 2348330
 CLASS: COP4655
 INSTRUCTOR: Steve Luis
 ASSIGNMENT: HW4
 DUE: Oct 8
 */

#import "ViewController.h"

@implementation ViewController

@synthesize name, email, addrBook;
int currentIndex;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    addrBook = [AddressBook alloc];
    addrBook = [addrBook initWithName:@"This is Gigi's Address Book"];
    
    name.text = @"gigi";
    email.text= @"gpach002@fiu.edu";
    
    AddressCard *card1 = [[AddressCard alloc]init];
    
    [card1 setName:name.text andEmail:email.text];
    [addrBook addCard: card1];
    
    
    
    name.text = @"gfbhjdas";
    email.text= @"gpach002@fiu.edu";
    
    AddressCard *card2 = [[AddressCard alloc]init];
    
    [card2 setName:name.text andEmail:email.text];
    [addrBook addCard: card2];
    
    
    
    name.text = @"sponge";
    email.text= @"bob@fiu.edu";
    
    AddressCard *card3 = [[AddressCard alloc]init];
    
    [card3 setName:name.text andEmail:email.text];
    [addrBook addCard: card3];
    [addrBook sort];
    AddressCard *card = [addrBook getCard:0];
    name.text = card.name;
    email.text = card.email;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonNew:(id)sender
{
    name.text=@"";
    email.text=@"";
    
    AddressCard *cardUpdated = [[AddressCard alloc] init];
    
    [cardUpdated setName: name.text andEmail:email.text];
    
    [addrBook addCard: cardUpdated];
    [addrBook sort];
}
-(IBAction)update:(id)sender
{
    AddressCard *currentCard = [addrBook getCard:currentIndex];
    
    [currentCard setName: name.text andEmail:email.text];
    
    [addrBook sort];
}
-(IBAction)changeCards:(id)sender
{
    currentIndex = ([sender tag] + currentIndex) % (int)[addrBook entries];
    if(currentIndex < 0)
    {
        currentIndex = (int)[addrBook entries] - 1;
    }
    
    
    AddressCard *currentCard = [addrBook getCard:currentIndex];
    name.text = currentCard.name;
    email.text= currentCard.email;
    
}



@end
