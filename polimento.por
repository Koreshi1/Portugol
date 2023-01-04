programa
{
inclua biblioteca Util

//VARIAVEIS
inteiro opcao, idade[999], posicao = 0, quant = 0, n
cadeia nome[999], pausa

	
	funcao inicio()
	{
			se (quant == 0) {
			escreva ("Quantos alunos deseja cadastrar [MAX 999]: ")
			leia(quant)
			}

			se (quant <= 0) {
			limpa()
			inicio()
			}
			
					
			// CUSTOMIZAR MENU
			limpa()
			escreva("-------------------------------\n")
			escreva("|            MENU             |\n")
			escreva("-------------------------------\n\n\n")
			escreva(" 1 - Cadastro de alunos \n\n")
			escreva(" 2 - Listar alunos cadastrados\n\n")
			escreva(" 3 - Sair \n\n\n")
			escreva("-------------------------------\n\n")
			escreva(" Opção: ")
			leia(opcao)
	
			escolha (opcao) {
				
				// CADASTRO DO ALUNO
				caso 1:	limpa()
												
						se (posicao < quant) {
						limpa()
						escreva("Nome do aluno: ")
						leia(nome[posicao])
						limpa()
		
						escreva("Idade do aluno: ")
						leia(idade[posicao])
						Util.aguarde(200)
						limpa()
						posicao = posicao+1
	
						escreva("Cadastrado com sucesso!")
						Util.aguarde(800)
						}
						
						
						senao { escreva("* Não há espaço para mais alunos! *")
						Util.aguarde(1300)
						}
						
	
						inicio()
						pare
						
				// LISTAR ALUNOS CADASTRADOS
				caso 2: 	limpa()
						para (n = 0; n < posicao; n++) {
						escreva("Auno ", n+1, ": ", nome[n], " / Idade: ", idade[n], "\n")
						}		
						
						se (n == 0) {
						escreva("* Nenhum aluno cadastrado! *")
						Util.aguarde(1300)
						}
						
						se (n > 0) {
						escreva("\nPressione [ENTER] para voltar.")
						leia(pausa)
						}
						
						limpa()
						inicio()
						pare
						
				// ENCERRAR PROGRAMA
				caso 3:	limpa()
						escreva("Encerrando o sistema . . . \n\n")
						escreva("(¯ ▽ ¯) /\n")
						Util.aguarde(1300)
						limpa()
						pare
						
	
				caso contrario: 	limpa()
								escreva("* Opção invalida *")
								Util.aguarde(2000)
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
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */