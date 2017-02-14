#!/bin/bash
HERE=$(dirname "$PWD/$0")
TREE=$PWD/$1
GKRUST=$TREE/toolkit/library/rust


echo "HERE = $HERE"
echo "TRERE = $TREE"
echo "GKRUST = $GKRUST"

cp "$GKRUST/Cargo.toml" "$GKRUST/Cargo.toml.bk"
cd "$GKRUST"
sed '/^doc /d' "$GKRUST/Cargo.toml.bk" > "$GKRUST/Cargo.toml"
CARGO_TARGET_DIR="$HERE" cargo doc
cp "$GKRUST/Cargo.toml.bk" "$GKRUST/Cargo.toml"
rm "$GKRUST/Cargo.toml.bk"
