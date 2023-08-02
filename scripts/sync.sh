#!/usr/bin/env sh

set -eu
cd "$(dirname "$0")"
cd ..

if [ -n "$(git status exllama --porcelain)" ]; then
  echo "'exllama' directory has uncommitted changes."
  exit 1
fi

git submodule update --init --recursive

rm -r exllama/exllama_ext
cp -r submodules/exllama/exllama_ext exllama

cp submodules/exllama/cuda_ext.py exllama
cp submodules/exllama/generator.py exllama
cp submodules/exllama/lora.py exllama
cp submodules/exllama/model.py exllama
cp submodules/exllama/tokenizer.py exllama
