#import "LibraryViewController.h"
#import "MaterializeLabelViewController.h"
#import "SequenceLabelViewController.h"

@interface LibraryViewController ()

@end

@implementation LibraryViewController

#pragma mark - Actions

- (IBAction)materializeLabelButtonPressed:(id)sender {
    MaterializeLabelViewController *vc = [[MaterializeLabelViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)sequenceLabelButtonPressed:(id)sender {
    SequenceLabelViewController *vc = [[ SequenceLabelViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
