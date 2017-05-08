# cmake最小版本要求
cmake_minimum_required(VERSION 2.8)

# 声明一个工程
project (helloDaDao)

# 添加可执行程序
add_executable(helloDaDao helloDaDao.cpp)


# 使用helloLib库
add_subdirectory(helloLib)
include_directories(helloLib)

add_executable(helloDaDaoLib helloDaDaoLib.cpp)
target_link_libraries(helloDaDaoLib helloLib)

# # 使用FindHelloLib
# # 添加cmake模块以使用g2o
# list( APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules )
# # 使用find_package
# find_package(HelloLib REQUIRED)
# IF(HelloLIB_FOUND)
#   message("find hello lib")
# ENDIF(HelloLIB_FOUND)
# include_directories(${HelloLIB_INCLUDE_DIR})

# add_executable(helloDaDaoLibFindPackage helloDaDaoLib.cpp)
# target_link_libraries(helloDaDaoLibFindPackage ${HelloLIB})