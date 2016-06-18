#!/bin/sh

INSTALLATION_DIR="/product/server/liferay/automatique_install"
EXPORT_DIR="${WORKSPACE}"
PACKAGE_NAME="LiferayWorkspace.tar.gz"

cd "${WORKSPACE}"
tar -zcvf "${PACKAGE_NAME}" "LiferayWorkspace/*"

mkdir -p "${INSTALLATION_DIR}"

mv "${PACKAGE_NAME}" "${INSTALLATION_DIR}" 

cd "${INSTALLATION_DIR}"
tar -zxvf "${PACKAGE_NAME}"
