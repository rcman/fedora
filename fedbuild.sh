sudo dnf install fedpkg
fedpkg clone -a kernel
cd kernel
sudo dnf builddeep kernel.spec

