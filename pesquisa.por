programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u

	//VARIAVEIS
	inteiro opcao, idade[100], posicao_m1 = 0, posicao_m2 = 0, posicao_m3 = 0, quant = 0,  valor = 0
	cadeia nome[100], pausa, pesquisa

	
	funcao inicio() {
		
			se 	(quant == 0) {
				escreva ("Quantos alunos deseja cadastrar [MAX 100]: ")
				leia(quant)
			}

			se 	(quant <= 0 ou quant > 100) {
				limpa()
				quant = 0
				inicio()
			}
			
					
			// CUSTOMIZAR MENU
			limpa()
			escreva("-------------------------------\n")
			escreva("|            MENU             |\n")
			escreva("-------------------------------\n")
			escreva(" 1 - Cadastro de aluno \n\n")
			escreva(" 2 - Listar alunos cadastrados\n\n")
			escreva(" 3 - Pesquisar aluno\n\n")
			escreva(" 4 - Sair \n")
			escreva("-------------------------------\n")
			escreva(" Opção: ")
			leia(opcao)
	
			escolha (opcao) {
				
				// CADASTRO DO ALUNO
				caso 1:	limpa()
												
						se 	(posicao_m1 < quant) {
							limpa()
							escreva("Cadastro ", posicao_m1,"/", quant, "\n")
							escreva("Nome do aluno: ")
							leia(nome[posicao_m1])
							nome[posicao_m1] = t.caixa_alta(nome[posicao_m1])
							limpa()
		
							escreva("Idade do aluno: ")
							leia(idade[posicao_m1])
							u.aguarde(200)
							limpa()
							posicao_m1 = posicao_m1+1
		
							escreva("Cadastrado com sucesso!")
							u.aguarde(800)
						}
						
						
						senao 	{ escreva("* Não há espaço para mais alunos! *")
								u.aguarde(1300)
						}
						
	
						inicio()
						pare
						
				// LISTAR ALUNOS CADASTRADOS
				caso 2: 	limpa()
				
						para (posicao_m2 = 0; posicao_m2 < posicao_m1; posicao_m2++) {
							escreva("Auno ", posicao_m2+1, ": ", nome[posicao_m2], " / Idade: ", idade[posicao_m2], "\n")
						}		
						
						se 	(posicao_m2 == 0) {
							escreva("* Nenhum aluno cadastrado! *")
							u.aguarde(1300)
						}
						
						se 	(posicao_m2 > 0) {
							escreva("\nPressione [ENTER] para voltar.\n")
							leia(pausa)
						}
						
						limpa()
						inicio()
						pare
						
				// PESQUISA DE ALUNOS
				caso 3:	limpa()
						escreva("Nome do aluno: ")
						leia (pesquisa)
						pesquisa = t.caixa_alta(pesquisa)
						valor = 0
						limpa()

						para 	(posicao_m3 = 0; posicao_m3 < posicao_m1; posicao_m3++) {
							
								se 	(nome[posicao_m3] == pesquisa) {
									escreva("Aluno: ", nome[posicao_m3], " / Idade: ", idade[posicao_m3], "\n")
									valor = 1
									leia(pausa)		
								}
						
						}
						se 	(valor == 0) {
							escreva ("* Nao encontrado *")
							u.aguarde(1300)
							limpa()
						}
						
						inicio()
						pare
						

				// ENCERRAR PROGRAMA
				caso 4:	limpa()
						escreva("Encerrando o sistema . . . \n\n")
						escreva("(¯ ▽ ¯) /\n")
						u.aguarde(1300)
						limpa()
						pare
							
						
	
				caso contrario: 	limpa()
								escreva("* Opção invalida *")
								u.aguarde(2000)
								inicio()
								pare
		
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 381; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */