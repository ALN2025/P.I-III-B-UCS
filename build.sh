#!/bin/bash

echo "Compilando o projeto SGA..."

# Criar diretório de build se não existir
mkdir -p build

# Compilar todos os arquivos .java
javac -d build src/*.java

# Entrar no diretório de build
cd build

# Criar o JAR com o manifesto
jar cvfm sga.jar ../manifest.mf *.class

# Voltar para o diretório raiz
cd ..

# Mover o JAR para o diretório raiz
mv build/sga.jar .

echo "Arquivo sga.jar criado com sucesso!"

# Executar o JAR
java -jar sga.jar