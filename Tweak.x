#import "Tweak.h"
%hook MTMaterialView
	


	-(void)didMoveToWindow {
		//SETUP PREFS
		NSDictionary *bundleDefaults = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.newpolygons.pref.plist"];
		
		//ENABLE/DISABLE
		id isEnabled2 = [bundleDefaults valueForKey:@"isEnabled2"];
		id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
		
		
		
		//TRY SOMETHING NEW
		NSString* colourString = NULL;
		if(bundleDefaults) {
			colourString = [bundleDefaults objectForKey: @"myColor"];
		}
		
	
		
		UIColor* selectedColour = [SparkColourPickerUtils colourWithString: colourString withFallback: @"#ffffff"];
		
		//If statements
		if ([isEnabled isEqual:@0] && [isEnabled2 isEqual:@0]) {
			%orig;
		} 
		if ([isEnabled isEqual:@1] && [isEnabled2 isEqual:@0]) {
			UIImage *image = [UIImage imageWithContentsOfFile:@"/var/mobile/Library/SpringBoard/LockBackgroundThumbnail.jpg"];
			NSArray *options = @[];
			CozySchema *schema = [CozyAnalyzer schemaForImage:image withOptions:options];
			UIColor *dockColor = [[schema contrastColor] getColor];
			self.backgroundColor = dockColor;
			%orig;
		}
		if ([isEnabled isEqual:@0] && [isEnabled2 isEqual:@1]) {
			self.backgroundColor = selectedColour;
			%orig;
		}
		if ([isEnabled isEqual:@1] && [isEnabled2 isEqual:@1]) {
			%orig;
		}
	}
%end



