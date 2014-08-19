//
//  MyClass.m
//  Arman19.08.14
//
//  Created by itisioslab on 19.08.14.
//  Copyright (c) 2014 ru. All rights reserved.
//

#import "MyClass.h"
#import "TableClass.h"
@interface MyClass ()
{

}

@end

@implementation MyClass   


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.names = [[NSMutableArray alloc] init];
    self.tels = [[NSMutableArray alloc]init];
//    self.Label1.text = self.title;
//    self.Label2.text = self.title;
//    
    // Do any additional setup after loading the view.
   

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    TableClass *mc2 = [[TableClass alloc]init];
    
 
    mc2 = [segue destinationViewController];
//    NSIndexPath *IndexPath = [self.tableView indexpathseltedrow];
//    mc2.textInputMode = [arrName objectAtIndex:IndexPath.row];
//    mc2.textInputMode = [arrTel objectAtIndex:IndexPath.row];
    [self.names addObject:self.Label1.text];
    [self.tels addObject:self.Label2.text];
    
    mc2.arrName = self.names;
    mc2.arrTel = self.tels;

}


//[arrName addObject:self.Label1.text];
//[arrTel addObject:self.Label2.text];


@end


