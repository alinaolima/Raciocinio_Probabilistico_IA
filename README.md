# Raciocinio_Probabilistico_IA
Trabalho da Disciplina de Inteligência Artificial - Raciocínio Probabilístico

# Diagnóstico Probabilístico de Farol de Bicicleta

Este projeto utiliza **ProbLog** para modelar um sistema de diagnóstico de falhas em um farol de bicicleta alimentado por dínamo. O modelo leva em conta condições da rua, desgaste de componentes e falhas elétricas para estimar a probabilidade de haver tensão (v) no sistema.

## Estrutura do Modelo

- `str/1`: Define a condição da rua como `dry`, `wet` ou `snow_covered`.
- `r`: Representa a chance de o dínamo estar deslizando, com base na condição da rua.
- `v`: Representa se há tensão no sistema, dependendo apenas de `r`.
- `flw`: Volante desgastado (probabilidade fixa).
- `b`: Lâmpada em boas condições (probabilidade fixa).
- `k`: Cabo em boas condições (probabilidade fixa).
- `li`: Luz ligada, dependente de `v`, `b` e `k`.

## Evidência

O modelo assume como evidência que a rua está coberta de neve:

```prolog
evidence(str(snow_covered)).
