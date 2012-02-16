SRC_DIR = source
BUILD_DIR = build
UGLIFY = uglifyjs --unsafe -nc

BASE_FILES = ${SRC_DIR}/jquery.template.js

all: premake body min

premake:
	mkdir -p ${BUILD_DIR}

body:
	@@cat ${BASE_FILES} > ${BUILD_DIR}/jquery.template.js

min:
	${UGLIFY} ${BUILD_DIR}/jquery.template.js > ${BUILD_DIR}/jquery.template.min.js
