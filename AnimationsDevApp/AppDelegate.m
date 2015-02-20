#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    UIViewController *animationsViewController = [[UIViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:animationsViewController];
    self.window.rootViewController = navController;

    [self.window makeKeyAndVisible];
    return YES;
}

@end
