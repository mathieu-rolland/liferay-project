#!/bin/sh

INSTALLATION_DIR="/product/server/liferay/automatique_install"
EXPORT_DIR="${WORKSPACE}"
PACKAGE_NAME="LiferayWorkspace"

echo "Entering direcory ${WORKSPACE}"
cd "${WORKSPACE}"
echo "Generate package ${PACKAGE_NAME}"
tar -zcvf "${PACKAGE_NAME}.tar.gz" "LiferayWorkspace"

rm -rf "${INSTALLATION_DIR}"
mkdir -p "${INSTALLATION_DIR}"
echo "Moving package ${PACKAGE_NAME} to ${INSTALLATION_DIR}"
mv "${PACKAGE_NAME}.tar.gz" "${INSTALLATION_DIR}" 


echo "Unpackage archive ${PACKAGE_NAME}"
cd "${INSTALLATION_DIR}"
gunzip "${PACKAGE_NAME}.tar.gz"

tar xvf "${PACKAGE_NAME}.tar"

cd "${INSTALLATION_DIR}/LiferayWorkspace"
chmod +x gradlew
./gradlew initBundle
mkdir -p ${INSTALLATION_DIR}/LiferayWorkspace/bundles/tomcat-8.0.32/logs