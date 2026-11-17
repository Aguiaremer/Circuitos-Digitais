# Circuitos Digitais

Repositório de atividades e projetos desenvolvidos na disciplina de **Circuitos Digitais**. O material reúne descrições de hardware em VHDL, diagramas esquemáticos e projetos do Intel Quartus, além de arquivos relacionados às provas.

## Conteúdo

| Pasta | Material encontrado |
|---|---|
| `Lab1/` | Somadores de 1 e 4 bits, conversor para display de 7 segmentos e formas de onda. |
| `Lab2-1/` | Divisor de clock, contadores e temporizador de 30 segundos. |
| `Lab2-2/` | Circuitos de soma e deslocamento, com esquemáticos e VHDL para display. |
| `Lab3/` | Registradores de deslocamento PISO e SIPO, carregador e referência de temporização. |
| `Lab4/` | Contadores, divisor de clock e display de 7 segmentos. |
| `Lab5/` | Circuitos de controle e separação de barramento, incluindo descrições VHDL e esquemáticos. |
| `Lab6/` | Detector de sequência e circuito de display. |
| `Lab7/` | Detectores, contadores, divisor de frequência e módulos de memória. |
| `prova1/` | Projeto Quartus e descrição VHDL de máquina de estados. |
| `prova2/` | Projeto Quartus em diagrama esquemático. |
| `ProjetoFinal/` | Projeto final em Quartus, com módulos de jogo, temporização, contadores e detecção de comandos. |
| `ProjetoFinal.rar` | Arquivo compactado associado ao projeto final. |

Os diretórios também podem conter arquivos auxiliares do Quartus, como configurações (`.qsf`), projetos (`.qpf`), símbolos (`.bsf`), formas de onda (`.vwf`) e dados de compilação (`db/` e `incremental_db/`).

## Como abrir os projetos

1. Instale uma versão do **Intel Quartus Prime** compatível com os arquivos do projeto. Os arquivos de configuração examinados indicam Quartus Prime 18.1 Lite.
2. No Quartus, abra o arquivo `.qpf` da pasta desejada (por exemplo, `Lab1/Somador4bits.qpf` ou `ProjetoFinal/ProjetoFinal.qpf`).
3. Consulte o `.qsf` para verificar o dispositivo, a entidade de topo, os arquivos incluídos e os pinos configurados. Os projetos podem ter configurações diferentes.
4. Compile ou simule o projeto conforme a atividade. Alguns módulos usam diagramas `.bdf`; outros incluem código VHDL. Abra esses arquivos pelo projeto para preservar as dependências.

## Observações

- Este repositório documenta material de estudo da disciplina; os nomes das pastas identificam as atividades, mas nem todas incluem enunciados ou instruções de execução.
- Arquivos `.bak` são cópias de segurança presentes junto a algumas descrições VHDL.
- Resultados de compilação e arquivos temporários podem ser recriados pelo Quartus ao compilar.
