#import "AppDelegate.h"
#import "LibraryViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    LibraryViewController *libraryViewController = [[LibraryViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:libraryViewController];
    self.window.rootViewController = navController;

    [self.window makeKeyAndVisible];
    return YES;
}

@end
