@echo off
echo Compilando o projeto SGA...

:: Criar diretório de build se não existir
if not exist "build" mkdir build

:: Compilar todos os arquivos .java
javac -d build src/*.java

:: Entrar no diretório de build
cd build

:: Criar o JAR com o manifesto
jar cvfm sga.jar ../manifest.mf *.class

:: Voltar para o diretório raiz
cd ..

:: Mover o JAR para o diretório raiz
move build\sga.jar .

echo Arquivo sga.jar criado com sucesso!
pause 