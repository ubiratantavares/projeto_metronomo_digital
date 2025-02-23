# Relatório do Projeto

## Escopo do projeto

* Apresentação do projeto

* Título do projeto

* Objetivos do projeto

* Principais requisitos

* Descrição do funcionamento

* Justificativa

* Originalidade

## Hardware

* Diagrama em blocos

* Função de cada bloco

* Configuração de cada bloco

* Especificações

* Lista de materiais

* Descrição da pinagem usada

* Circuito completo do hardware

## Software

* Blocos funcionais

* Descrição das funcionalidades

* Definição das variáveis

* Fluxograma

* Inicialização

* Configurações dos registros

* Estrutura e formato dos dados

* Organização da memória

* Protocolo de comunicação

* Formato do pacote de dados

## Execução do Projeto

* Metodologia e Desenvolvimento

1. Definir de forma clara o escopo do projeto e seus principais requisitos. Descreva a função a ser executada pelo sistema embarcado proposto no projeto.

Etapa 1 - Requisitos

Envolve o levantamento do que se deseja projetar, a partir das informações do solicitante do projeto, e a sua descrição clara e sem ambiguidades.

Alguns consideram a fase mais importante para o sucesso, pois especificações errôneas e incompletas levam ao desenvolvimento de algo que não atenderá às expectativas. 
Deve-se, sempre que possível, identificar e eliminar as condicionantes fictícias, ou seja, imposições ou falsos requisitos fornecidos pelo solicitante, mas que na verdade não se sustentam, embora possam comprometer todo o projeto.

Os requisitos podem ser de duas naturezas:

* Requisitos Funcionais: relacionados com o funcionamento do sistema, indicando suas funções.

* Requisitos Não-Funcionais: indicam as propriedades do sistema, como desempenho, custo, tamanho, peso, e consumo de energia.


Etapa 2 - Especificação

Nessa etapa os requisitos são descritos formalmente, em uma linguagem sem ambiguidades, e validados pelo solicitante.


2. Organizar um repositório com o resultado da pesquisa sobre projetos correlatos e anterioridades.


Etapa 3 - Arquitetura

O sistema é descrito funcionalmente, utilizando-se normalmente diagramas em blocos, destacando-se os principais componentes e módulos do sistema, bem como as suas conexões e funções. Após refinamentos sucessivos, os blocos são implementados por componentes.

Etapa 4 - Componentes

São utilizados dispositivos comercialmente disponíveis, e na ausência destes, os componentes são projetados e implementados. Tanto os componentes de software como os de componentes de hardware devem ser projetados de modo a respeitar as interfaces de conexão que foram padronizadas no projeto. O teste isolado dos componentes é recomentado, por simplificar a próxima etapa.

Etapa 5 -  Integração do Sistema

Normalmente, nesta etapa são descobertos grande parte dos defeitos (bugs).

Dependendo da complexidade do projeto, a integração pode ser uma etapa de maior dificuldade, por envolver partes desenvolvidas por equipes distintas. A qualidade da metodologia e gerenciamento empregados, bem como das ferramentas de desenvolvimento empregadas, pode minimizar tais dificuldades.

3. Especificar os componentes de harware que serão utilizados no projeto. Verificar se atendem aos requisitos.

4. Especificar o software, detalhando as suas funções, procedimentos, variáveis, etc.

5. Implementar o projeto.

6. Testar.

7. Documentar.


* Testes de validação

* Discussão dos resultados


# Fluxo de desenvolvimento do projeto

## **Instalação das ferramentas** 

* **SDK do Raspberry Pi Pico**

* **Verificando a instalação do SDK C/C++**

```bash
echo $PICO_SDK_PATH
```

* **Compilador ARM GCC**

* **CMake**


https://cmake.org/

* **Ferramentas de build**

* https://mongoose.ws/documentation/#user-guide

* https://github.com/cesanta/mongoose

## **Criação do projeto final**

* **1. Criando o diretório do projeto**

```bash
mkdir -p ~/pico-projects/projeto_final
cd ~/pico-projects/projeto_final
```

* **2. Criando e editando o arquivo C principal**

```bash
micro app.c
```

### Explicação:

- Usamos `pico/stdlib.h` para acessar as funções do Raspberry Pi Pico.

- Inicializamos o **GPIO 25** (LED embutido).

- Criamos um **loop infinito** piscando o LED.


## Criando os arquivos de build**

* **1. Criando e editando o arquivo `CMakeLists.txt`**

```bash
micro CMakeLists.txt
```

* **2. Criando e editando o arquivo `pico_sdk_import.cmake`**

Este arquivo vai garantir que o CMake consiga encontrar o **PICO SDK**.

```bash
micro pico_sdk_import.cmake
```

### Explicação:

- O `CMakeLists.txt` define como o código será compilado.

- O `pico_sdk_import.cmake` garante que o SDK seja encontrado.


## **Compilando o projeto**

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

### Explicação:

- `cmake ..` configura o projeto.

- `make -j$(nproc)` compila o código.


## **Enviando o código para o Raspberry Pi Pico W**

* **1. Conectando o cabo USB já conectado na Raspberry Pi Pico W no computador com o botão BOOTSEL pressionado**

NOTA: O Pico aparecerá como um **dispositivo de armazenamento USB** (`RPI-RP2`).

* **2. Copiando o arquivo `.uf2` para o Pico**

```bash
cp blink.uf2 /media/$USER/RPI-RP2/
```

### Explicação:

- O Raspberry Pi Pico W lê esse arquivo e executa o código automaticamente.



As principais funcionalidades de um metrônomo digital incluem:

* Controle de tempo (BPM): Permite ajustar a velocidade dos pulsos, geralmente expressa em batidas por minuto (BPM), de acordo com a necessidade da música ou exercício. 

* Compasso: Muitos metrônomos digitais permitem configurar o número de batidas por compasso, auxiliando na marcação de ritmos e estruturas musicais. Defina o número de batidas por compasso: 2 a 7.

* Sons: Alguns modelos oferecem diferentes opções de sons para os pulsos (cliques, bipes, etc.) e até mesmo padrões rítmicos pré-definidos. Utilize o buzzer da BitDogLab para gerar os pulsos.

* Display visual: A maioria dos metrônomos digitais possui um visor que exibe o tempo (BPM) e outras informações relevantes, facilitando o acompanhamento visual. Exibe o BPM e o compasso no display LCD da BitDogLab.

* Função adicional: inclue recurso extra, tal como afinador integrado (gera tom de referência para afinação: Lá 440 Hz).

Essas funcionalidades tornam o metrônomo digital uma ferramenta indispensável para músicos de todos os níveis, ajudando a desenvolver o senso de ritmo, a precisão na execução e a consistência no tempo.

## Principais Funcionalidades

1. Ajuste de BPM via Potenciômetro: um potenciômetro será usado para definir a velocidade do metrônomo, variando entre 30 e 300 BPM.
2. Configuração de Compassos pelos Botões A e B.
3. Feedback Sonoro via Buzzer: emissão de cliques diferenciados para a primeira batida do compasso (acentuada) e para as demais.
4. Exibição das Configurações no Display:
	4.1 Na primeira linha: BPM atual (ex.: BPM = 120).
	4.2 Na segunda linha: compasso selecionado (ex.: Compasso: 4/4).
5. Salvamento e Recarga de Configurações: armazenamento do último BPM e compasso selecionados na memória flash do Pico W.

## Componentes Utilizados

Componente	Função

BitDogLab (RP2040)	Processamento do metrônomo
Potenciômetro	Ajuste do BPM
Botões (A, B)	Seleção de compasso
Buzzer	Emissão do clique sonoro
Display LCD	Exibição de BPM e compasso
Memória Flash	Armazenamento das configurações (opcional)

## Materiais Necessários:

Placa BitDogLab
Microcontrolador Raspberry Pi Pico W (RP2040)
Cabo USB para programação
Computador com ambiente de desenvolvimento C/C++

## Fluxo de Operação

1. Inicialização:

	- O sistema exibe um BPM padrão (ex.: BPM = 60) e um compasso inicial (4/4).
	- O buzzer realiza um breve "beep" de inicialização.

2. Ajuste de BPM:

	- O usuário gira o potenciômetro, ajustando o BPM de 30 a 300.
	- O novo BPM é atualizado no display.

3. Configuração do Compasso:

	- O usuário pressiona A ou B para escolher o compasso desejado.
	- O buzzer fornece um feedback sonoro confirmando a seleção.

4. Execução do Metrônomo:

	- O sistema gera pulsos regulares via buzzer, com ênfase na primeira batida de cada compasso.

5. Desligamento:

	- As configurações podem ser salvas e recarregadas na próxima inicialização.

## Melhorias Futuras

* Interface Web para controle via Wi-Fi (BitDogLab suporta Wi-Fi).

* Conexão com aplicativos de música via Bluetooth MIDI.

* Expansão para metrônomo visual (LEDs piscando no ritmo).












PESQUISA NO CHATGPT

Estou construindo um relatório final, sendo escrito em Látex na plataforma online Overleaf, relativo ao desenvolvimento do projeto "Metrônomo Digital". Considerando que projeto deve ser bem documentado para que que outras pessoas possam reproduzi-lo com todas as informações necessárias para tal.

Ajude-me na estruturação do documento (relatório final) do projeto "Metrônomo Digital" considerando que os seguintes pontos abaixo:

## Escopo do projeto

* Apresentação do projeto - breve descrição sobre o que trata o projeto (CONCLUÍDO)

* Título do projeto - pequeno título para o projeto (CONCLUÍDO)

* Objetivos do projeto - descreva os objetivos do projeto (CONCLUÍDO)

* Principais requisitos - descreva os requisitos funcionais e não funcionais do projeto.

* Descrição do funcionamento - descreva as funcionalidades do projeto

* Justificativa - mostre que a execução do projeto se justifica.

* Originalidade - mostre através de uma pesquisa que existem ou não projetos correlatos. Se existirem, verifique se não são iguais.

## Hardware

* Diagrama em blocos - diagrama mostrando os blocos e sua interligação.

* Função de cada bloco - descreva a função que cada bloco no projeto.

* Configuração de cada bloco - descreva a configuração usada em cada bloco.

* Especificações - descreva como as especificações técnicas atendem os requisitos do usuário.

* Lista de materiais - incluindo descrição e quantidade.

* Descrição da pinagem usada - quais pinos do hardware foram usados e a sua função. Criar uma tabela para indicar como os pinos do microcontrolador se conectam com os periféricos.

* Circuito completo do hardware - faça o desenho do circuito completo do hardware.

## Software

* Blocos funcionais - mostre um diagrama das camadas do software e suas funções.

* Descrição das funcionalidades - breve descrição das funções dos blocos de software.

* Definição das variáveis - descreva as principais variáveis usadas.

* Fluxograma - desenhe o fluxograma completo do software.

* Inicialização - descreva o processo de inicialização do software.

* Configurações dos registros - descreva as funções de configuração dos registros.

* Estrutura e formato dos dados - descreva os dados específicos usados no software.

* Organização da memória - descrição dos endereços de memória utilizado.

* Protocolo de comunicação - descreva o protocolo, se existir.

* Formato do pacote de dados - descreva a formação dos pacotes, se existir.

## Execução do Projeto

* Metodologia - descrição da execução das etapas do projeto: pesquisas realizadas, escolha do hardware, definição das funcionalidades do software, inicialização da IDE, programação 
da IDE, depuração. Considere as cinco etapas da metodologia de desenvolvimento de sistemas embarcados da seguinte referência bibliográfica: 

GUGNASCA, C. E. Projetos de Sistema Embarcados. Departamento
de Engenharia de Computação e Sistemas Digitais. Escola Politécnica da USP, 02/2018. 

* Testes de validação: descreva os testes realizados para validação do funcionamento.

* Discussão dos resultados - analise os resultados e conclua sobre a confiabilidade e aplicabilidade do projeto.


No arquivo projeto.pdf é apresentado todos os arquivos desenvolvidos para o funcionamento do projeto que já foi testado no ambiente simulado Worki e que encontra-se em funcionamento.

No arquivo U7T_UdST.pdf é apresentado, de forma parcial, o que foi escrito até o momento no documento (relatório final).

Podemos desenvolver a estruturação do documento de forma progressiva até chegarmos ao processo de término.
