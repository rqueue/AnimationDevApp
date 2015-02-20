#import "SequenceLabelViewController.h"
#import <RQAnimations/RQSequenceLabel.h>

@interface SequenceLabelViewController ()

@property (nonatomic, copy) NSArray *attributedTexts;
@property (nonatomic) NSUInteger iteration;

@end

@implementation SequenceLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.iteration = 0;

    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.alignment = NSTextAlignmentLeft;
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont fontWithName:@"AvenirNext-Medium" size:20.0],
                                 NSForegroundColorAttributeName: [UIColor whiteColor],
                                 NSParagraphStyleAttributeName: [paragraphStyle copy]};

    NSArray *strings = @[@"I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.\n\n–Michael Jordan",
                         @"Every strike brings me closer to the next home run.\n\n–Babe Ruth",
                         @"Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails.  Explore, Dream, Discover.\n\n–Mark Twain",
                         @"The mind is everything. What you think you become.\n\n–Buddha",
                         @"I’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.\n\n–Maya Angelou"];

    NSMutableArray *mutableTexts = [NSMutableArray array];
    for (NSString *string in strings) {
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:string
                                                                               attributes:attributes];
        [mutableTexts addObject:attributedString];
    }
    self.attributedTexts = [mutableTexts copy];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    [self animate];
}

- (void)animate {
    NSAttributedString *text = self.attributedTexts[self.iteration % [self.attributedTexts count]];
    self.sequenceLabel.attributedText = text;
    [self.sequenceLabel showTextWithAnimation:YES completion:^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.sequenceLabel hideTextWithAnimation:YES completion:^{
                self.iteration++;
                [self animate];
            }];
        });
    }];
}

@end
