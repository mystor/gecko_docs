#!/bin/bash
HERE=$(dirname "$PWD/$0")
TREE=$PWD/$1
GKRUST=$TREE/toolkit/library/rust


echo "HERE = $HERE"
echo "TRERE = $TREE"
echo "GKRUST = $GKRUST"

cp "$GKRUST/Cargo.toml" "$GKRUST/Cargo.toml.bk"
cd "$GKRUST"
sed '/^doc \|^panic /d' "$GKRUST/Cargo.toml.bk" > "$GKRUST/Cargo.toml"
cat "$GKRUST/Cargo.toml"
CARGO_TARGET_DIR="$HERE" cargo doc --features "servo quantum_render"
cp "$GKRUST/Cargo.toml.bk" "$GKRUST/Cargo.toml"
rm "$GKRUST/Cargo.toml.bk"
