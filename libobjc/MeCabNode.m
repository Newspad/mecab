//
//  MeCabNode.m
//
//  Created by Watanabe Toshinori on 10/12/22.
//  Copyright 2010 FLCL.jp. All rights reserved.
//

#import "MeCabNode.h"


@implementation MeCabNode

@synthesize surface;
@synthesize feature;
@synthesize features;

- (void)setFeature:(NSString *)value {
	if (feature) {
        feature = nil;
	}
	if (value) {
		feature = value;
		self.features = [value componentsSeparatedByString:@","];
	} else {
		feature = nil;
		self.features = nil;
	}
}

- (NSString *)partOfSpeech {
	if (!features || [features count] < 1) {
		return nil;
	}
	return features[0];
}

- (NSString *)partOfSpeechSubtype1 {
	if (!features || [features count] < 2) {
		return nil;
	}
	return features[1];
}

- (NSString *)partOfSpeechSubtype2 {
	if (!features || [features count] < 3) {
		return nil;
	}
	return features[2];
}

- (NSString *)partOfSpeechSubtype3 {
	if (!features || [features count] < 4) {
		return nil;
	}
	return features[3];
}

- (NSString *)inflection {
	if (!features || [features count] < 5) {
		return nil;
	}
	return features[4];
}

- (NSString *)useOfType {
	if (!features || [features count] < 6) {
		return nil;
	}
	return features[5];
}

- (NSString *)originalForm {
	if (!features || [features count] < 7) {
		return nil;
	}
	return features[6];
}

- (NSString *)reading {
	if (!features || [features count] < 8) {
		return nil;
	}
	return features[7];
}

- (NSString *)pronunciation {
	if (!features || [features count] < 9) {
		return nil;
	}
	return features[8];
}

- (void)dealloc {
	self.surface = nil;
	self.feature = nil;
    self.features = nil;

}

@end
