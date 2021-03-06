//
//  JKParsedAudioData.m
//  JKAudioFileStream
//
//  Created by Jack on 16/6/11.
//  Copyright © 2016年 Jack. All rights reserved.
//

#import "JKParsedAudioData.h"

@implementation JKParsedAudioData

@synthesize data = _data;
@synthesize packetDescription = _packetDescription;

+ (instancetype)parsedAudioDataWithBytes:(const void *)bytes
                       packetDescription:(AudioStreamPacketDescription)packetDescription {
    return [self alloc];
}


- (instancetype)initWithBytes:(const void *)bytes
            packetDescription:(AudioStreamPacketDescription)packetDescription {
    if (bytes == NULL || packetDescription.mDataByteSize == 0) {
        return nil;
    }
    
    self = [super init];
    if (self) {
        _data = [NSData dataWithBytes:bytes length:packetDescription.mDataByteSize];
        _packetDescription = packetDescription;
    }
    return self;
    
}

@end
