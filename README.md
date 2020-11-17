# LED + RGB no VHDL

Usando o software Vivado foi programado em VHLD um código para placa Arty 7 que faz algumas ações com 2 LED e 2 RGBs built in na placa. 

## Descrição do modelo

Utilizando 1 botão muda-se a configuração dos LED comuns, em  um primeiro momento os LED se encontram ligados, após o pressionamento do botão os LED acendem em sequência até que o botão seja pressionado novamente alterando novamente para o estado anterior. Utilizando 3 Switches pode-se alterar os estados dos RGBs, cada Switch corresponde a um valor binário que representa uma respectiva cor primária do RGB, alterando esses bits é possível mudar a cor dos RGBs.Um outro botão serve como confirmação para efetivar a mudança dos RGBs.

[Learn more about READMEs](https://help.github.com/en/articles/about-readmes)

## Material
-Placa Xilinx Arty Artix-7 35T;
- 2 Botões built-in;

- 3 Switches built-in;

- Leds RGB built-in;

- 2 Leds Comuns built-in;

- Cabo USB micro;

- Software VIVADO;


## Imagem do ambiente de desenvolvimento
![repo-settings-image](https://github.com/FabLJ/Led_RGB_VHDL/blob/master/images/Vivado.PNG)


## Circuito Digital Gerado
![repo-settings-image](https://github.com/FabLJ/Led_RGB_VHDL/blob/master/images/Schem.PNG)

## Placa com o código rodando
![repo-settings-image](https://github.com/FabLJ/Led_RGB_VHDL/blob/master/images/IMG_20201116_210423955.jpg)

Na imagem 2 switches estão acionados dando a cor azul fraca no RGB,enquanto os leds normais alternam.

Links para o código:
Main VHDL -> https://github.com/FabLJ/Led_RGB_VHDL/blob/master/Projeto/Trabalho_1_MicroII.srcs/sources_1/new/Trabalho_1.vhd


XDC       -> https://github.com/FabLJ/Led_RGB_VHDL/blob/master/Projeto/Trabalho_1_MicroII.srcs/constrs_1/new/Trabalho_1.xdc


