# Command
```json
["-p1", "{ios_project_1}", "-p2", "{ios_project_2}", "-d", "-v", "-f", "git"]
```

# Expected exit code
2

# Expected output
```
FILE_REFERENCES[0m

[31mRemoved  (8):[0m

  • Project/Group B/AViewController.xib
  • Project/Group B/AnotherObjcClass.h
  • Project/Group B/AnotherObjcClass.m
  • Project/Resources/time.png
  • ProjectTests/BarTests.swift
  • ProjectUITests/LoginTests.swift
  • ProjectUITests/Screenshots/empty.png
  • libMismatchingLibrary.a

[0m
[32mAdded  (11):[0m

  • MismatchingLibrary.framework
  • MismatchingLibrary/MismatchingLibrary-Info.plist
  • NewFramework.framework
  • NewFramework/Info.plist
  • NewFramework/NewFramework.h
  • Project/Project.xcconfig
  • Project/Target.xcconfig
  • ProjectFramework/Header4.h
  • ProjectTests/Responses/ListResponse.json
  • ProjectUITests/MetricsTests.swift
  • README.md

[0m
[0mTARGETS > NATIVE targets[0m

[32mAdded  (1):[0m

  • NewFramework

[0m
[33mModified (1):[0m

  • MismatchingLibrary product type
    ◦ com.apple.product-type.library.static
    ◦ com.apple.product-type.framework

[0m
[0mTARGETS > AGGREGATE targets[0m

[32mAdded  (1):[0m

  • NewAggregate

[0m
[0mHEADERS > "MismatchingLibrary" target[0m

[32mAdded  (1):[0m

  • MismatchingLibrary/MismatchingLibrary.h

[0m
[0mHEADERS > "ProjectFramework" target[0m

[32mAdded  (1):[0m

  • ProjectFramework/Header4.h

[0m
[33mModified (2):[0m

  • ProjectFramework/Header1.h attributes
    ◦ Public
    ◦ nil (Project)

[0m  • ProjectFramework/Header2.h attributes
    ◦ Private
    ◦ nil (Project)

[0m
[0mSOURCES > "Project" target[0m

[31mRemoved  (1):[0m

  • Project/Group B/AnotherObjcClass.m

[0m
[33mModified (1):[0m

  • Project/Group A/ObjcClass.m compiler flags
    ◦ nil
    ◦ -ObjC

[0m
[0mSOURCES > "ProjectTests" target[0m

[31mRemoved  (1):[0m

  • ProjectTests/BarTests.swift

[0m
[0mSOURCES > "ProjectUITests" target[0m

[31mRemoved  (1):[0m

  • ProjectUITests/LoginTests.swift

[0m
[32mAdded  (1):[0m

  • ProjectUITests/MetricsTests.swift

[0m
[0mRESOURCES > "Project" target[0m

[31mRemoved  (2):[0m

  • Project/Group B/AViewController.xib
  • Project/Resources/time.png

[0m
[0mRESOURCES > "ProjectTests" target[0m

[32mAdded  (1):[0m

  • ProjectTests/Responses/ListResponse.json

[0m
[0mRESOURCES > "ProjectUITests" target[0m

[31mRemoved  (1):[0m

  • ProjectUITests/Screenshots/empty.png

[0m
[0mCONFIGURATIONS > Root project[0m

[32mAdded  (1):[0m

  • CUSTOM_NEW

[0m
[0mSETTINGS > Root project > "Debug" configuration > Base configuration[0m

[33mModified (1):[0m

  • Path to .xcconfig
    ◦ nil
    ◦ Project/Project.xcconfig

[0m
[0mSETTINGS > Root project > "Debug" configuration > Values[0m

[32mAdded  (1):[0m

  • CUSTOM_SETTGING_1

[0m
[0mSETTINGS > Root project > "Release" configuration > Values[0m

[32mAdded  (1):[0m

  • CUSTOM_SETTGING_1

[0m
[0mSETTINGS > "MismatchingLibrary" target > "Debug" configuration > Values[0m

[31mRemoved  (1):[0m

  • OTHER_LDFLAGS

[0m
[32mAdded  (13):[0m

  • CLANG_ENABLE_MODULES
  • CURRENT_PROJECT_VERSION
  • DEFINES_MODULE
  • DYLIB_COMPATIBILITY_VERSION
  • DYLIB_CURRENT_VERSION
  • DYLIB_INSTALL_NAME_BASE
  • INFOPLIST_FILE
  • INSTALL_PATH
  • LD_RUNPATH_SEARCH_PATHS
  • PRODUCT_BUNDLE_IDENTIFIER
  • SWIFT_OPTIMIZATION_LEVEL
  • VERSIONING_SYSTEM
  • VERSION_INFO_PREFIX

[0m
[33mModified (1):[0m

  • PRODUCT_NAME
    ◦ $(TARGET_NAME)
    ◦ $(TARGET_NAME:c99extidentifier)

[0m
[0mSETTINGS > "MismatchingLibrary" target > "Release" configuration > Values[0m

[31mRemoved  (1):[0m

  • OTHER_LDFLAGS

[0m
[32mAdded  (12):[0m

  • CLANG_ENABLE_MODULES
  • CURRENT_PROJECT_VERSION
  • DEFINES_MODULE
  • DYLIB_COMPATIBILITY_VERSION
  • DYLIB_CURRENT_VERSION
  • DYLIB_INSTALL_NAME_BASE
  • INFOPLIST_FILE
  • INSTALL_PATH
  • LD_RUNPATH_SEARCH_PATHS
  • PRODUCT_BUNDLE_IDENTIFIER
  • VERSIONING_SYSTEM
  • VERSION_INFO_PREFIX

[0m
[33mModified (1):[0m

  • PRODUCT_NAME
    ◦ $(TARGET_NAME)
    ◦ $(TARGET_NAME:c99extidentifier)

[0m
[0mSETTINGS > "Project" target > "Debug" configuration > Base configuration[0m

[33mModified (1):[0m

  • Path to .xcconfig
    ◦ nil
    ◦ Project/Target.xcconfig

[0m
[0mSETTINGS > "Project" target > "Debug" configuration > Values[0m

[32mAdded  (1):[0m

  • ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES

[0m
[33mModified (1):[0m

  • CUSTOM_SETTING_COMMON
    ◦ VALUE_1
    ◦ VALUE_2

[0m
[0mSETTINGS > "Project" target > "Release" configuration > Values[0m

[32mAdded  (1):[0m

  • ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES

[0m
[33mModified (1):[0m

  • CUSTOM_SETTING_COMMON
    ◦ VALUE_1
    ◦ VALUE_2

[0m
[0mSETTINGS > "ProjectFramework" target > "Debug" configuration > Values[0m

[33mModified (1):[0m

  • PRODUCT_BUNDLE_IDENTIFIER
    ◦ com.bloomberg.xcdiff.Project.testprovisioning.ProjectFramework
    ◦ com.bloomberg.xcdiff.Project.ProjectFramework

[0m
[0mSETTINGS > "ProjectFramework" target > "Release" configuration > Values[0m

[33mModified (1):[0m

  • PRODUCT_BUNDLE_IDENTIFIER
    ◦ com.bloomberg.xcdiff.Project.testprovisioning.ProjectFramework
    ◦ com.bloomberg.xcdiff.Project.ProjectFramework

[0m
[0mSOURCE_TREES > Root project[0m
Output format: (<path>, <name>, <source_tree>)

[31mRemoved  (8):[0m

  • (AViewController.xib, nil, <group>) → (Group B, nil, <group>) → (Project, nil, <group>) → (nil, nil, <group>)
  • (AnotherObjcClass.h, nil, <group>) → (Group B, nil, <group>) → (Project, nil, <group>) → (nil, nil, <group>)
  • (AnotherObjcClass.m, nil, <group>) → (Group B, nil, <group>) → (Project, nil, <group>) → (nil, nil, <group>)
  • (BarTests.swift, nil, <group>) → (ProjectTests, nil, <group>) → (nil, nil, <group>)
  • (LoginTests.swift, nil, <group>) → (ProjectUITests, nil, <group>) → (nil, nil, <group>)
  • (empty.png, nil, <group>) → (Screenshots, nil, <group>) → (ProjectUITests, nil, <group>) → (nil, nil, <group>)
  • (libMismatchingLibrary.a, nil, BUILT_PRODUCTS_DIR) → (nil, Products, <group>) → (nil, nil, <group>)
  • (time.png, nil, <group>) → (Resources, nil, <group>) → (Project, nil, <group>) → (nil, nil, <group>)

[0m
[32mAdded  (11):[0m

  • (Header4.h, nil, <group>) → (ProjectFramework, nil, <group>) → (nil, nil, <group>)
  • (Info.plist, nil, <group>) → (NewFramework, nil, <group>) → (nil, nil, <group>)
  • (ListResponse.json, nil, <group>) → (Responses, nil, <group>) → (ProjectTests, nil, <group>) → (nil, nil, <group>)
  • (MetricsTests.swift, nil, <group>) → (ProjectUITests, nil, <group>) → (nil, nil, <group>)
  • (MismatchingLibrary-Info.plist, nil, <group>) → (MismatchingLibrary, nil, <group>) → (nil, nil, <group>)
  • (MismatchingLibrary.framework, nil, BUILT_PRODUCTS_DIR) → (nil, Products, <group>) → (nil, nil, <group>)
  • (NewFramework.framework, nil, BUILT_PRODUCTS_DIR) → (nil, Products, <group>) → (nil, nil, <group>)
  • (NewFramework.h, nil, <group>) → (NewFramework, nil, <group>) → (nil, nil, <group>)
  • (Project.xcconfig, nil, <group>) → (Project, nil, <group>) → (nil, nil, <group>)
  • (README.md, nil, <group>) → (nil, nil, <group>)
  • (Target.xcconfig, nil, <group>) → (Project, nil, <group>) → (nil, nil, <group>)

[0m
[0mDEPENDENCIES > "Project" target > Linked Dependencies[0m

[32mAdded  (2):[0m

  • MismatchingLibrary.framework
  • NewFramework.framework

[0m
[33mModified (1):[0m

  • ARKit.framework attributes
    ◦ required
    ◦ optional

[0m
[0mDEPENDENCIES > "Project" target > Embedded Frameworks[0m

[32mAdded  (2):[0m

  • MismatchingLibrary.framework
  • NewFramework.framework

[0m
[0m

```
