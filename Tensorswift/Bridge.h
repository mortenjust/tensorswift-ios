//
//  Bridge.h
//  Tensorswift
//
//  Created by Morten Just Petersen on 1/9/17.
//  Copyright © 2017 Morten Just Petersen. All rights reserved.
//

#ifndef Bridge_h
#define Bridge_h


#include <memory>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>


#include "tensorflow/core/public/session.h"
#include "tensorflow/core/util/memmapped_file_system.h"


@class Bridge;

@interface Bridge : NSObject
{
    std::unique_ptr<tensorflow::Session> tf_session;
    std::unique_ptr<tensorflow::MemmappedEnv> tf_memmapped_env;
    std::vector<std::string> labels;
}
@end


#endif /* Bridge_h */
