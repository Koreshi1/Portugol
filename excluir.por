programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u

	//VARIAVEIS
	inteiro opcao, idade[30], quant = 0,  valor = 0, vetor_m1 = 0, ponteiro_m2 = 0, ponteiro_m3 = 0, ponteiro_m4 = 0
	cadeia nome[30], pausa, pesquisa


	funcao inicio() 
	{

			se 	(quant == 0) 
			{
				escreva ("Quantos alunos deseja cadastrar [MAX 30]: ")
				leia(quant)
			}

			se 	(quant <= 0 ou quant > 20) 
			{
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
			escreva(" 4 - Excluir aluno\n\n")
			escreva(" 5 - Sair \n")
			escreva("-------------------------------\n")
			escreva(" Opção: ")
			leia(opcao)
	
			escolha (opcao) 
			{
				
				// CADASTRO DO ALUNO
				caso 1:	limpa()
												
						se 	(vetor_m1 < quant) 
						{
							limpa()
							escreva(vetor_m1,"/", quant, "\n")
							escreva("Nome do aluno: \n")
							leia(nome[vetor_m1])
							nome[vetor_m1] = t.caixa_alta(nome[vetor_m1])
							limpa()
		
							escreva("Idade do aluno: ")
							leia(idade[vetor_m1])
							u.aguarde(200)
							limpa()
							vetor_m1 = vetor_m1+1
		
							escreva("Cadastrado com sucesso!")
							u.aguarde(800)
						}
					
						senao 	
						{ escreva("* Não há espaço para mais alunos! *")
								u.aguarde(1300)
						}
						
						inicio()
						pare
						
				// LISTAR ALUNOS CADASTRADOS
				caso 2: 	limpa()
				
						para (ponteiro_m2 = 0; ponteiro_m2 < vetor_m1; ponteiro_m2++) 
						{
							
							se (nome[ponteiro_m2] == "")
							{
								escreva("")
							}
							
							senao 
							{
							escreva("Auno ", ponteiro_m2+1, ": ", nome[ponteiro_m2], " / Idade: ", idade[ponteiro_m2], "\n")
							}
						}		
						
						se 	(ponteiro_m2 == 0) 
						{
							escreva("* Nenhum aluno cadastrado! *")
							u.aguarde(1300)
						}
						
						se 	(ponteiro_m2 > 0) 
						{
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

						para 	(ponteiro_m3 = 0; ponteiro_m3 < vetor_m1; ponteiro_m3++) 
						{
							
								se 	(nome[ponteiro_m3] == pesquisa) 
								{
									escreva("Aluno: ", nome[ponteiro_m3], " / Idade: ", idade[ponteiro_m3], "\n")
									valor = 1
									leia(pausa)		
								}
						
						}
						
						se 	(valor == 0) 
						{
							escreva ("* Nao encontrado *")
							u.aguarde(1300)
							limpa()
						}
						
						inicio()
						pare

				//EXCLUIR ALUNOS
				caso 4: 	limpa()
						escreva("Nome do aluno: ")
						leia (pesquisa)
						pesquisa = t.caixa_alta(pesquisa)
						limpa()
						valor = 0

						para		(ponteiro_m4 = 0; ponteiro_m4 < vetor_m1; ponteiro_m4++) 
						{

								se 	(nome[ponteiro_m4] == pesquisa) 
								{
									escreva("Aluno: ", nome[ponteiro_m4], " foi excluido.\n")
									u.aguarde(1300)
									limpa()
									
									para (ponteiro_m4; ponteiro_m4 < vetor_m1; ponteiro_m4++) 
									{
										nome[ponteiro_m4] = nome[ponteiro_m4+1]
										idade[ponteiro_m4] = idade[ponteiro_m4+1]
										valor = 1
									}
									vetor_m1--
								}
						}

						se 	(valor == 0) 
						{
							escreva ("* Não encontrado *")
							u.aguarde(1300)
							limpa()
						}

						
						inicio()
						pare
						
				// ENCERRAR PROGRAMA
				caso 5:	limpa()
						escreva("Encerrando o sistema . . . \n\n")
						escreva("(¯ ▽ ¯) /\n")
						u.aguarde(1300)
						limpa()
						pare
							
						
	
				caso contrario: 	limpa()
								escreva("* Opção invalida *")
								u.aguarde(1300)
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
 * @POSICAO-CURSOR = 217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor_m1, 7, 50, 8}-{ponteiro_m4, 7, 98, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */