//
//  EntryDetailViewController.m
//  JournalObjectiveC
//
//  Created by Nathan Andrus on 2/11/19.
//  Copyright © 2019 Nathan Andrus. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation EntryDetailViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.updateViews;
    self.title = _entry.title;
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{
    [textField resignFirstResponder];
    return true;
}

- (void)updateViews {
    if (_entry) {
        _textView.text = _entry.text;
        _textField.text = _entry.title;
    }
}



- (IBAction)saveButtonTapped:(id)sender {
    if ([_textField.text isEqualToString:@""]) { return; }
    if ([_textView.text isEqualToString:@""]) { return; }
    
    if (!_entry) {
        Entry * entryToAdd = [[Entry alloc] initWithTitle: _textField.text text: _textView.text];
        [[EntryController sharedInstance] addEntry:entryToAdd];
        }
    if (_entry) {
        [[EntryController sharedInstance] updateWithEntry:_entry :_textField.text :_textView.text];
         }
    [self.navigationController popViewControllerAnimated:true];
    }
@end
