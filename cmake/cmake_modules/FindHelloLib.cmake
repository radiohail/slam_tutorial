# Find the header files
FIND_PATH(HelloLIB_INCLUDE_DIR helloLib.h
  /usr/local/include
  NO_DEFAULT_PATH
  )

# find the library
FIND_LIBRARY(HelloLIB
  NAMES helloLib
  PATHS
  /usr/local/lib
  NO_DEFAULT_PATH
  )

# set HelloLIB_FOUND 变量
SET(HelloLIB_FOUND "NO")
IF(HelloLIB)
  SET(HelloLIB_FOUND "YES")
ENDIF(HelloLIB)
