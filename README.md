# LED + RGB no VHDL

Usando o software Vivado foi programado em VHLD um código para placa Arty 7 que faz algumas ações com 2 LED e 2 RGBs built in na placa. 

## Descrição do modelo

Utilizando 1 botão muda-se a configuração dos LED comuns, em  um primeiro momento os LED se encontram ligados, após o pressionamento do botão os LED acendem em sequência até que o botão seja pressionado novamente alterando novamente para o estado anterior. Utilizando 3 Switches pode-se alterar os estados dos RGBs, cada Switch corresponde a um valor binário que representa uma respectiva cor primária do RGB, alterando esses bits é possível mudar a cor dos RGBs.Um outro botão serve como confirmação para efetivar a mudança dos RGBs.

[Learn more about READMEs](https://help.github.com/en/articles/about-readmes)

## Material
-Placa Xilinx Arty Artix-7 35T;
- [X]2 Botões built-in;

- [X]3 Switches built-in;

- [X]Leds RGB built-in;

- [x]2 Leds Comuns built-in;

- [x]Cabo USB micro;

- [x]Software VIVADO;


## Imagem do ambiente de desenvolvimento
![repo-settings-image](https://github.com/FabLJ/Led_RGB_VHDL/blob/master/images/Vivado.PNG)


## Circuito Digital Gerado
![repo-settings-image](https://github.com/FabLJ/Led_RGB_VHDL/blob/master/images/Schem.PNG)

## Placa com o código rodando
![repo-settings-image](https://github.com/FabLJ/Led_RGB_VHDL/blob/master/images/IMG_20201116_210423955.jpg)

Na imagem 2 switches estão acionados dando a cor azul fraca no RGB,enquanto os leds normais alternam.


