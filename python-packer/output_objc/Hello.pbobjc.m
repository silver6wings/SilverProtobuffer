// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Hello.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Hello.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - SILHelloRoot

@implementation SILHelloRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - SILHelloRoot_FileDescriptor

static GPBFileDescriptor *SILHelloRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"helloDemo"
                                                 objcPrefix:@"SIL"
                                                     syntax:GPBFileSyntaxProto2];
  }
  return descriptor;
}

#pragma mark - SILHelloRequest

@implementation SILHelloRequest

@dynamic hasId_p, id_p;
@dynamic hasFoo, foo;
@dynamic hasBar, bar;

typedef struct SILHelloRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *foo;
  NSString *bar;
  int64_t id_p;
} SILHelloRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = SILHelloRequest_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SILHelloRequest__storage_, id_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "foo",
        .dataTypeSpecific.className = NULL,
        .number = SILHelloRequest_FieldNumber_Foo,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SILHelloRequest__storage_, foo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "bar",
        .dataTypeSpecific.className = NULL,
        .number = SILHelloRequest_FieldNumber_Bar,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SILHelloRequest__storage_, bar),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SILHelloRequest class]
                                     rootClass:[SILHelloRoot class]
                                          file:SILHelloRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SILHelloRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\000ID\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - SILHelloResponse

@implementation SILHelloResponse

@dynamic hasId_p, id_p;
@dynamic hasContent, content;

typedef struct SILHelloResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *content;
  int64_t id_p;
} SILHelloResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = SILHelloResponse_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SILHelloResponse__storage_, id_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "content",
        .dataTypeSpecific.className = NULL,
        .number = SILHelloResponse_FieldNumber_Content,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SILHelloResponse__storage_, content),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SILHelloResponse class]
                                     rootClass:[SILHelloRoot class]
                                          file:SILHelloRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SILHelloResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\000ID\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
