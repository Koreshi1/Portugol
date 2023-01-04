programa
{
	inclua biblioteca Util --> u
	const inteiro quant = 25
	cadeia nome[quant], pausa
	caracter confirma
	inteiro resultado = 0, total = 0, posicao = 0, opcao
	
	funcao inicio()
	{
		escreva("--------------------------------------\n")
		escreva("|         FILA DE PACIENTES	     |\n")
		escreva("--------------------------------------\n")
		escreva(" 1 - Adicionar paciente a fila\n\n")
		escreva(" 2 - Listar fila\n\n")
		escreva(" 3 - Atender proximo da fila\n\n")
		escreva(" 4 - Remover todos pacientes da fila\n\n")
		escreva(" 5 - Sair \n")
		escreva("-------------------------------------\n")
		escreva(" Opção: ")
		leia(opcao)

			escolha(opcao)
			{
				caso 1:	cadastrar()
						pare
						
				caso 2:	listar()
						pare
						
				caso 3:	atender()
						pare
						
				caso 4:	apagar_fila()
						pare

				caso 5: 	sair()
						pare
						
				caso 666:	vazia()
						pare

						
				caso contrario:
						limpa()
						inicio()
						pare
			}
	}
	//fila
	funcao cadastrar()
	{
		limpa()
		se(total < quant)
		{
			escreva(total, "/", quant, "\n", "Nome: ")
			leia(nome[total])
			se(nome[total]=="")
			{
				limpa()
				inicio()
			}
			total = total + 1
			limpa()
			inicio()
		}
		se(total >= quant)
		{	
			limpa()
			escreva("* A fila está cheia *")
			u.aguarde(1300)
		}
		//se(nome[total]=="")
		senao
		{
			limpa()
			inicio()
		}
		
		limpa()
		inicio()
	}
	funcao listar()
	{
		limpa()
		se(total == 0)
		{	
			escreva("* Não tem pacientes na fila* ")
			u.aguarde(1300)
			limpa()
			inicio()
		}
		para(posicao = 0; posicao < total; posicao++)
		{
			escreva("Nome, ", nome[posicao], "\n")
		}
		leia(pausa)
		limpa()
		inicio()
	}
	funcao atender()
	{	
		limpa()
		se(total == 0)
		{	
			escreva("* Não tem pacientes na fila *")
			u.aguarde(1300)
			limpa()
			inicio()
		}
		senao
		{
		posicao = 0 
		limpa()
		escreva("Atender: ", nome[posicao], "\n")

		para(posicao; posicao < total-1; posicao++)
		{
			nome[posicao] = nome[posicao+1]
		}
		nome[total-1] = ""
		total--
		escreva("\nPressione [ENTER] para voltar.\n")
		leia(pausa)
		limpa()
		inicio()
		}
	}
	funcao apagar_fila()
	{	
		limpa()
		escreva("Deseja realmente limpar a fila? [S/N]\n")
		leia(confirma)
		se(confirma == 'S' ou confirma == 's')
		{
			limpa()
			escreva("* Fila removida *")
			u.aguarde(1300)
			limpa()
			total = 0
			inicio()
		}
		se(confirma == 'N' ou confirma == 'n')
		{
			limpa()
			inicio()
		}
		senao
		{
			apagar_fila()
		}
	}
	funcao vazia()
	{	
		limpa()
		se(total > 0)
		{
			escreva("verdade\n")
			leia(pausa)
		}
		senao
		{
			escreva("falso\n")
			leia(pausa)
		}
		limpa()
		inicio()
	}
	funcao sair()
	{
		limpa()
		escreva("Saindo. . .")
		u.aguarde(1300)
		limpa()
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 981; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */