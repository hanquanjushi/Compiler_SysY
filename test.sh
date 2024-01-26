mkdir build
cd build
cmake ..
make
cd ..
./build/lexer tests/func/36_rotate.sy | tee report.txt 