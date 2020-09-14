#include "FroRootListController.h"
#include <spawn.h>


@implementation FroRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)openTwitter {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"http://twitter.com/newpolygons"]
	options:@{}
	completionHandler:nil];

}

- (void)respring {
	pid_t pid;
	int status;
	const char* args[] = {"killall", "-9", "SpringBoard", NULL};
	posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char*   const*)args, NULL);
	waitpid(pid, &status, WEXITED);
}


@end