programa
{
	inclua biblioteca Util --> u
	const inteiro quant = 20
	cadeia livro[quant], pausa
	inteiro opcao, posicao = 0, n

	funcao inicio()
	{
			escreva("-------------------------------\n")
			escreva("|            MENU             |\n")
			escreva("-------------------------------\n")
			escreva(" 1 - Empilhar novo livro\n\n")
			escreva(" 2 - Lista de livros\n\n")
			escreva(" 3 - Remover livro da pilha\n\n")
			escreva(" 4 - Remover todos livros da pilha\n\n")
			escreva(" 5 - Sair \n")
			escreva("-------------------------------\n")
			escreva(" Opção: ")
			leia(opcao)
	
			escolha (opcao) 
			{
				caso 1:
						limpa()
						empilhar()
						pare

				caso 2:
						limpa()
						listar()
						pare

				caso 3:	
						limpa()
						remover()
						pare

				caso 4:
						limpa()
						limpar_pilha()
						pare
						
				caso 5:
						limpa()
						sair()
						pare
						
				caso contrario: 	limpa()
								escreva("* Opção invalida *")
								u.aguarde(1300)
								inicio()
								pare
				
			}
	}
	//pilha
	funcao empilhar()
	{
		se(quant > posicao)
		{
			escreva("Max ", quant, "\n")
			escreva("Nome do livro:\n")
			leia(livro[posicao])
			posicao++
		}

		senao
		{
			escreva("* Não há mais espaço na pilha *\n")
			u.aguarde(1300)
		}
		limpa()
		inicio()
	}
	
	funcao listar()
	{
		para(n = posicao-1; n >= 0; n--)
		{
			se 	(livro[n] == "")
			{
				escreva("")
			}
			senao
			{
				escreva("Nome do livro: ", livro[n], "\n")
			}
		}
		se(posicao > 0)
		{
			escreva("\nPressione [ENTER] para voltar.\n")
			leia(pausa)
		}
		se(posicao <= 0)
		{
			escreva("* Não há livros cadastrados *\n")
			u.aguarde(1300)
		}
		limpa()
		inicio()
		
	}

	funcao remover()
	{
		se(posicao <= 0)
		{
			escreva("* Não há livros cadastrados *\n")
			u.aguarde(1300)
			limpa()
			inicio()
		}
		escreva("Livro removido: ", livro[posicao--], "\n\n")
		escreva("\nPressione [ENTER] para voltar.\n")
		leia(pausa)
		limpa()
		inicio()
	}

	funcao limpar_pilha()
	{
		/*LIMPAR VETOR
		 
		para(n = posicao-1; n >= 0; n--)
		{
			livro[n] = ""
			Util.aguarde(300)
		}
		*/
		se(posicao <= 0)
		{
			escreva("* Não há livros cadastrados *\n")
			u.aguarde(1300)
			limpa()
			inicio()
		}
		escreva("* Todos livros removidos *\n")
		posicao = 0
		u.aguarde(1300)
		limpa()
		inicio()
	}
	
	funcao sair()
	{
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1039; 
 * @DOBRAMENTO-CODIGO = [76, 104, 120, 144];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */