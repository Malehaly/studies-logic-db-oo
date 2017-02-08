Algoritmo "segundaAula2"
// cap 6 - operador logicos
// E / OU / NAO
// E/&&/And - basta uma das operacoes serem falsas que todo teste é F
// OU/||/Or - qualquer um dos testes é V, torna operação V
// NAO/!/Not - inverte o V e F

// exemplo: valor1 > valor2 / valor1 > 1000,00
// V V |
// V F |
// F V |
// F F |
// se for E, a ordem do resultado será: V, F, F, F
// ou - V, V, V, F
// nao - FF, FV, VF, VV
// no caso do Nao, cuidar com os (), pois pode negar toda uma ordem ou
// somente um dos casos: !(V e F) = !(F) = V  ---- !V e F = F e F = F


// XOR / Xou - igual ao OR, mas somente uma das opções pode ser V (VV=F)

Var
temDinheiro, temTempo : logico

Inicio

escreval ("Testes com ambos verdadeiros")
temDinheiro <- verdadeiro
temTempo <- verdadeiro
escreval (temDinheiro e temTempo)
escreval (temDinheiro ou temTempo)
escreval (temDinheiro xou temTempo)
escreval (nao temDinheiro e temTempo)
escreval (nao (temDinheiro e temTempo))

escreval ("Testes com ambos falsos")
temDinheiro <- falso
temTempo <- falso
escreval (temDinheiro e temTempo)
escreval (temDinheiro ou temTempo)
escreval (temDinheiro xou temTempo)
escreval (nao temDinheiro e temTempo)
escreval (nao (temDinheiro e temTempo))

escreval ("Testes com um V e um F")
temDinheiro <- verdadeiro
temTempo <- falso
escreval (temDinheiro e temTempo)
escreval (temDinheiro ou temTempo)
escreval (temDinheiro xou temTempo)
escreval (nao temDinheiro e temTempo)
escreval (nao (temDinheiro e temTempo))

Fimalgoritmo