DATA_DIR=../data
BIN_DIR=../bin
SRC_DIR=../src

TEXT_DATA=jay/new_black.txt
VECTOR_DATA=jay/black-vector.bin

echo -- Training vectors...
time $BIN_DIR/word2vec -train $TEXT_DATA -output $VECTOR_DATA -cbow 0 -size 50 -window 5 -negative 0 -hs 1 -sample 1e-3 -threads 12 -binary 1

echo -- distance...

$BIN_DIR/distance $VECTOR_DATA
