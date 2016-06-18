#!/bin/sh

INSTALLATION_DIR="/product/server/liferay/automatique_install"
EXPORT_DIR="${WORKSPACE}"
PACKAGE_NAME="LiferayWorkspace.tar.gz"

echo "Entering direcory ${WORKSPACE}"
cd "${WORKSPACE}"
echo "Generate package ${PACKAGE_NAME}"
tar -zcvf "${PACKAGE_NAME}" "LiferayWorkspace"

mkdir -p "${INSTALLATION_DIR}"
echo "Moving package ${PACKAGE_NAME} to ${INSTALLATION_DIR}"
mv "${PACKAGE_NAME}" "${INSTALLATION_DIR}" 


echo "Unpackage archive ${PACKAGE_NAME}"
cd "${INSTALLATION_DIR}"
gunzip "${PACKAGE_NAME}"
tar xvf "${PACKAGE_NAME}"