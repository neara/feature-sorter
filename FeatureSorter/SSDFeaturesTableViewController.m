//
//  SSDFeaturesTableViewController.m
//  FeatureSorter
//
//  Created by Ana Tr on 7/16/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDFeaturesTableViewController.h"
#import "SSDClassificationPresentation.h"
#import "SSDClassificationPresentationItem.h"

@interface SSDFeaturesTableViewController ()

// private properties
@property NSMutableArray*                   featureItems;
@property SSDClassificationPresentation*    classificationPresentationChoices;

@end

@implementation SSDFeaturesTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // acquire feature items container
    self.featureItems = [[NSMutableArray alloc] init];
    
    // acquire classification presentation details
    self.classificationPresentationChoices = [SSDClassificationPresentation sharedClassificationPresentation];

    // fill in feature items container
    [self loadInitialData];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Private methods

// loads features from the store
- (void) loadInitialData
{
    SSDSingleFeature *item1 = [[SSDSingleFeature alloc] init];
    item1.name = @"Dynamic table view with cells";
    item1.effort = 4;  // out of 10
    item1.value = 5;  // out of 10
    item1.status = statusNotStarted;
    [self.featureItems addObject:item1];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.featureItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FeatureCell" forIndexPath:indexPath];
    
    SSDSingleFeature *featureItem = [self.featureItems objectAtIndex:indexPath.row];
    
    // acquire presentation details
    SSDClassificationPresentationItem* featureClassificationDetails =
        [self.classificationPresentationChoices getFor:featureItem.classification];

    cell.textLabel.text = featureItem.name;
    cell.detailTextLabel.text =
        [NSString stringWithFormat:@"Value: %d | Effort: %d",
         featureItem.value, featureItem.effort];

    cell.backgroundColor = featureClassificationDetails.backgroundColor;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    
}

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
