# cmake最小版本要求
cmake_minimum_required(VERSION 2.8)

# 添加库
add_library(helloLib SHARED helloLib.cpp)

# 安装库文件到目录
set_target_properties(helloLib
    PROPERTIES
    PUBLIC_HEADER "helloLib.h"
    )
install(TARGETS helloLib
    LIBRARY DESTINATION lib
    PUBLIC_HEADER DESTINATION include
    )