mkdir build
cd build
cmake -DTARGET_TYPE=OTHER \
    -DCLIENT_ONLY=TRUE \
    -G "$CMAKE_GENERATOR" \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Debug \
    $SRC_DIR
cmake --build .
cmake --build . --target install
cd $PREFIX/python
$PYTHON setup.py install --single-version-externally-managed --record=record.txt
