* Verificando a instalação do SDK C/C++

```bash
echo $PICO_SDK_PATH
```

* Criando o diretório do projeto

```bash
mkdir -p ~/pico-projects/projeto_final
cd ~/pico-projects/projeto_final
```

* Criando e editando o arquivo C principal

```bash
micro main.c
```

* Criando e editando o arquivo `CMakeLists.txt`

```bash
micro CMakeLists.txt
```

* Criando e editando o arquivo `pico_sdk_import.cmake`

```bash
micro pico_sdk_import.cmake
```

* Criando um diretório de build

```bash
mkdir build
```

* Acessando o diretório criado

```bash
cd build
```

* Executando o CMake

```bash
cmake ..
```

* Compilando

```bash
make -j$(nproc)
```

* Conectando o cabo USB já conectado na Raspberry Pi Pico W no computador com o botão BOOTSEL pressionado. NOTA: O Pico aparecerá como um **dispositivo de armazenamento USB** (`RPI-RP2`).

* Copiando o arquivo `.uf2` para o Pico

```bash
cp blink.uf2 /media/$USER/RPI-RP2/
```

