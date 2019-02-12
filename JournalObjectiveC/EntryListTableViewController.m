//
//  EntryListTableViewController.m
//  JournalObjectiveC
//
//  Created by Nathan Andrus on 2/11/19.
//  Copyright © 2019 Nathan Andrus. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"
#import "Entry.h"


@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}



#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.sharedInstance.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entry = EntryController.sharedInstance.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = entry.text;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        EntryDetailViewController *detailVC = segue.destinationViewController;
        NSIndexPath *index = [self.tableView indexPathForSelectedRow];
        Entry *entryToSend = EntryController.sharedInstance.entries[index.row];
        detailVC.entry = entryToSend;
    }
}

@end


