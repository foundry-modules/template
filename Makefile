SRC_DIR = source
BUILD_DIR = build
FOUNDRY_DIR = ../..
PRODUCTION_DIR = ${FOUNDRY_DIR}/scripts
DEVELOPMENT_DIR = ${FOUNDRY_DIR}/scripts_
UGLIFY = uglifyjs --unsafe -nc

BASE_FILES = ${SRC_DIR}/jquery.template.js

all: premake body min foundry

premake:
	mkdir -p ${BUILD_DIR}

body:
	@@cat ${BASE_FILES} > ${BUILD_DIR}/jquery.template.js

min:
	${UGLIFY} ${BUILD_DIR}/jquery.template.js > ${BUILD_DIR}/jquery.template.min.js

foundry:
	cat ${FOUNDRY_DIR}/build/foundry_intro.js \
		${BUILD_DIR}/jquery.template.js \
		${FOUNDRY_DIR}/build/foundry_outro.js \
		> ${DEVELOPMENT_DIR}/template.js

	${UGLIFY} ${DEVELOPMENT_DIR}/template.js > ${PRODUCTION_DIR}/template.js
