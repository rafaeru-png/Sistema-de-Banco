Algoritmo "Opera??es Banc?rias"
// Disciplina   : [Linguagem e L?gica de Programa??o]
// Professor   : --------------------------
// Descri??o   : Simulando opera??es de um sistema banc?rio
// Autor(a)    : Rafaeru.png
// Data atual  : 16/02/2023
Var
// Se??o de Declara??es das vari?veis 
cc,cp,saque,deposito,transferencia,saldo : real
op,conta,cdebi,ccred: inteiro
continuar: caracter

// Exibe o menu de contas para Contas, Cdebito e Ccredito
procedimento menuContas(opcao :caracter)

Inicio
escreval("")
escreval("          ---===== CONTAS =====----")
escolha opcao
Escreval("      Qual opera??o deseja fazer?")
caso "CO"
//CONTAS
escreval("      [1]Conta Corrente")
escreval("      [2]Conta Poupanca")
Escreval("      Qual Conta deseja fazer a opera??o?")
leia (conta)
caso "CD"
// CONTAS DEBITO
escreval("      [1]Conta Corrente")
escreval("      [2]Conta Poupanca")
Escreval("      Qual Conta deseja fazer a opera??o de Debito (Retirada)?")
leia (cdebi)
caso "CC"
// CONTAS CREDITO
escreval("      [1]Conta Corrente")
escreval("      [2]Conta Poupanca")
Escreval("      Qual Conta deseja fazer a opera??o de Credito (Retirada)?")
leia (ccred)

fimescolha
fimprocedimento

// Menu Saldo
procedimento menuSaldo (opcao :caracter)

Inicio
escolha opcao

// Mostrar:

// Conta Corrente
caso "CC"
escreval("      Saldo da conta Conta Corrente R$ ",cc)
// Conta Poupan?a
caso "CP"
escreval("      Saldo da conta Conta Poupanca R$ ",cp)
// Todas as Contas
caso "TD"
escreval("      Saldo da conta Conta Corrente R$ ",cc)
escreval("      Saldo da conta Conta Poupanca R$ ",cp)


fimescolha
fimprocedimento

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc... 
// Valores Iniciais
cc <- 1000
cp <- 500
continuar <- "S"
// SALDO ATUAL
escreval("          ---===== BANCO DE DADOS =====----")
escreval("")
enquanto (continuar = "S") faca
menuSaldo("TD")
//Opera??es
escreval("")
escreval("          ---===== OPERA??ES =====----")
escreval("      [1]Saque")
escreval("      [2]Deposito")
escreval("      [3]Transferencia")
Escreval("      Qual opera??o deseja fazer?")
Leia(op)
Escolha op

caso 1
//SAQUE
 Escreval("     Qual o valor a ser sacado?")
 Leia(saque)

//CONTAS

menuContas("CO")

//
escolha conta
caso 1
se (saque>cc)ent?o
Escreval ("saldo Insuficiente")
senao
 cc <- cc-saque
fimse
 escreval("")
 escreval("      Saldo da conta Conta Corrente R$ ",cc)

caso 2
 cp <- cp-saque
 escreval("")
 escreval("      Saldo da conta Conta Poupanca R$ ",cp)

fimescolha


caso 2
//DEPOSITO
 Escreval("     Qual o valor a ser depositado?")
 Leia(deposito)

//CONTAS

menuContas("CO")

escolha conta
caso 1
 cc <- cc+deposito
 escreval("")
 escreval("      Saldo da conta Conta Poupan?a R$ ",cc)

caso 2
 cp <- cp+deposito
 escreval("")
 escreval("      Saldo da conta Conta Corrente R$ ",cp)
fimescolha

caso 3
//TRANFERENCIA
 Escreval("     Qual o valor a ser Transferido?")
 Leia(transferencia)

//CONTAS DEBITO

menuContas("CD")

//CONTAS CREDITO

menuContas("CC")

se (cdebi = ccred)ent?o
escreval("N?o ? permitido tranfer?ncia na mesma conta, escolha novamente !")

//CONTAS DEBITO

menuContas("CD")

//CONTAS CREDITO

menuContas("CC")

fimse

escolha cdebi
caso 1
saldo <- cc
caso 2
saldo <- cp
fimescolha

enquanto ( transferencia > saldo) faca
escreval("Voc? n?o tem Saldo !!!!")
escreval ("Seu saldo ? ", saldo)
escreval ("tenta o valor menor que ",saldo)
leia (transferencia)
fimenquanto

// Saque de CDEBI
se (cdebi = 1) entao
cc <- cc - transferencia
senao
se (cdebi = 2) entao
cp <- cp - transferencia
fimse
fimse

//Deposito de CCRED
se (ccred = 1) entao
cc <- cc + transferencia
senao
se (ccred = 2) entao
cp <- cp + transferencia
fimse
fimse

outrocaso
Escreval("Opera??o Invalida")
fimescolha
Escreval( "Deseja Continuar? [S/N]")
leia(continuar)
limpatela
fimenquanto
Fimalgoritmo
