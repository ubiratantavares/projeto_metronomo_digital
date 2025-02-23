# Instalação das Ferramentas 

## SDK C/C++ do Raspberry Pi Pico

* **Verificando a instalação do SDK C/C++**

```bash
echo $PICO_SDK_PATH
```

## Compilador ARM GCC


## CMake


# Desenvolvimento do Projeto


* **1. Criando o diretório do projeto**

```bash
mkdir -p ~/pico-projects/projeto_final
cd ~/pico-projects/projeto_final
```

* **2. Criando e editando o arquivo C principal**

```bash
micro main.c
```

* **3. Criando os arquivos de build**

* Criando e editando o arquivo `CMakeLists.txt`

```bash
micro CMakeLists.txt
```

* 4. Criando e editando o arquivo `pico_sdk_import.cmake`

Este arquivo vai garantir que o CMake consiga encontrar o **PICO SDK**.

```bash
micro pico_sdk_import.cmake
```

## Compilando o projeto

Nesta etapa foi compilado o código para gerar o **arquivo `.uf2`**, que será enviado ao **Raspberry Pi Pico W**.

* **1. Criando um diretório de build**

```bash
mkdir build
```

* **2. Acessando o diretório criado**

```bash
cd build
```

* **3. Executando o CMake**

```bash
cmake ..
```

* **4. Compilando**

```bash
make -j$(nproc)
```

## **Enviando o código para o Raspberry Pi Pico W**

* **1. Conectando o cabo USB já conectado na Raspberry Pi Pico W no computador com o botão BOOTSEL pressionado**

NOTA: O Pico aparecerá como um **dispositivo de armazenamento USB** (`RPI-RP2`).

* **2. Copiando o arquivo `.uf2` para o Pico**

```bash
cp blink.uf2 /media/$USER/RPI-RP2/
```
