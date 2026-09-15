#!/bin/bash

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

# Download the pretrained OpenAI CLIP ViT-L/14 base model used by Effort
wget https://github.com/sever46/Effort-AIGI-Detection/releases/download/0.1/models--openai--clip-vit-large-patch14.tar.xz
tar xvf models--openai--clip-vit-large-patch14.tar.xz 
rm models--openai--clip-vit-large-patch14.tar.xz

