include ../../build/modules.mk

MODULE = template
FILENAME = ${MODULE}.js
RAWFILE = ${DEVELOPMENT_DIR}/${MODULE}.raw.js

SOURCE = ${SOURCE_DIR}/jquery.${MODULE}.js

PRODUCTION = ${PRODUCTION_DIR}/${FILENAME}
DEVELOPMENT = ${DEVELOPMENT_DIR}/${FILENAME}

all: raw module clean

module:
	${WRAP} -c ${RAWFILE} > ${DEVELOPMENT}
	${UGLIFYJS} ${DEVELOPMENT} > ${PRODUCTION}

raw:
	cat ${SOURCE} > ${RAWFILE}

clean:
	rm -fr ${RAWFILE}
