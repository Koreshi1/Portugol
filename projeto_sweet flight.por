programa
{
	inclua biblioteca Util inclua biblioteca Texto
	inteiro coluna = 0, linha = 0, opcao, assentos_disp = 0, assentos_reserv = 0, assentos_total, poltrona = 0, fila = 0
	cadeia nome, break, nomes[30][10]
	funcao inicio()
	{
		cabecario()
		escreva(" 1 - Cadastrar o total de poltronas na aeronave.\n\n")
		escreva(" 2 - Realizar reserva de poltrona.\n\n")
		escreva(" 3 - Visualizar poltronas disponíveis.\n\n")
		escreva(" 4 - Visualizar poltronas reservadas.\n\n")
		escreva(" 5 - Consultar passageiro pelo nome. \n\n")
		escreva(" 6 - Visualizar o total de poltronas reservadas e poltronas disponíveis.\n\n")
		escreva(" 7 - Sair do sistema. \n")
		escreva("---------------------------------------------------------------------------\n")
		escreva(" Opção: ")
		leia(opcao)
		
		escolha(opcao)
		{
			caso 1: 	total_poltrona()
					pare

			caso 2: 	reserva_poltrona()
					pare

			caso 3: 	listar_disponiveis()
					pare

			caso 4: 	listar_reservadas()
					pare

			caso 5: 	pesquisar_nome()
					pare

			caso 6: 	porcentagem_disp()
					pare

			caso 7: 	sair()
					pare

			caso contrario: limpa()
						 inicio()
						 pare
		}	
	}
	funcao total_poltrona()
	{
		linha = 0
		coluna = 0
		assentos_disp = 0
		assentos_reserv = 0
		assentos_total = 0
		limpa()
		se(linha == 0 e coluna == 0)
		{
			inteiro aux1, aux2
			cabecario()
			escreva("Quantas LINHAS de poltronas a aéronave possui? [MAX 30]\n")
			leia(linha)
			aux1 = linha
			se(linha > 30 ou linha < 1)
			{
				limpa()
				cabecario()
				escreva("VALOR INVALIDO")
				Util.aguarde(1300)
				limpa()
				total_poltrona()
			}
			
			escreva("\nQuantas COLUNAS de poltronas a aéronave possui?[MAX 10]\n")
			leia(coluna)
			aux2 = coluna
			se(coluna > 10 ou coluna < 1)
			{
				limpa()
				cabecario()
				escreva("VALOR INVALIDO")
				Util.aguarde(1300)
				limpa()
				total_poltrona()
			}
			assentos_disp = linha * coluna
			assentos_total = assentos_disp
			/*inteiro valor = 0
			para(coluna = 0; coluna < aux2; coluna++)
			{
				para(linha = 0; linha < aux1; linha++)
				{
					poltronas[linha][coluna] = valor
				}
			}
			*/
			coluna = aux2
			linha = aux1
			
		}
		limpa()
		inicio()
	}
	funcao reserva_poltrona()
	{
		fila = 0
		poltrona = 0
		limpa()
		cabecario()
		se(assentos_disp == 0)
		{
			escreva("Sem assentos disponiveis")
			Util.aguarde(1300)
			limpa()
			inicio()
		}
		se(assentos_disp > 0)
		{
			escreva("Nº DE FILAS: ", linha-1, "\nInforme o número da fila: ")
			leia(fila)
			se(fila >= linha ou fila <= 0)
			{
				limpa()
				inicio()
			}
			escreva("\nNº DE POLTRONAS: ", coluna-1, "\nInforme o número da poltrona: ")
			leia(poltrona)
			se(poltrona >= coluna ou poltrona <= 0)
			{
				limpa()
				inicio()
			}
			escreva("\nInforme o nome do passageiro: ")
			leia(nome)
			limpa()
			cabecario()
			se(nomes[fila][poltrona] != "")
			{
				escreva("Poltrona já está reservada! Por favor, escolha outra.")
				Util.aguarde(1300)
				limpa()
				reserva_poltrona()
			}
			nomes[fila][poltrona] = Texto.caixa_alta(nome)
			assentos_disp--
			assentos_reserv++
			escreva("Poltrona Cadastrada com sucesso!")
			Util.aguarde(1300)
			limpa()
		}
		inicio()
	}
	funcao listar_disponiveis()
	{	
		inteiro aux1, aux2
		limpa()
		se(assentos_disp > 0)
		{
			limpa()
			aux1 = coluna
			aux2 = linha
			cabecario()
			escreva("Poltronas disponiveis para reserva:\n")
			para(linha = 0; linha < aux2; linha++)
			{
				se(linha < 10)
				{
					escreva("\nFila:  ", linha, " - Poltrona: ")
				}
				se(linha >= 10)
				{
					escreva("\nFila: ", linha, " - Poltrona: ")
				}
				para (coluna = 0; coluna < aux1; coluna++)
				{
					se (nomes[linha][coluna] == "")
					{
						se(coluna < aux1-1)
						{
							escreva(coluna, "  ")
						}
						se(coluna == aux1-1)
						{
							escreva(coluna, ".")
						}
					}
					se(nomes[linha][coluna] != "")
					{
						escreva("")
					}
				}
			}
			
			coluna = aux1
			linha = aux2
			escreva("\nTotal disponivel: ", assentos_disp)
			leia(break)
		}
		se(assentos_disp == 0)
		{
			cabecario()
			escreva("Não há poltronas disponíveis")
			Util.aguarde(1300)
		}
		limpa()
		inicio()
	}
	funcao listar_reservadas()
	{
		
		limpa()
		se(assentos_reserv == 0)
		{
			cabecario()
			escreva("Não há poltronas reservadas")
			Util.aguarde(1300)
			limpa()
			inicio()
		}
		se(assentos_reserv > 0)
		{
			inteiro aux1, aux2
			aux1 = coluna
			aux2 = linha
			cabecario()
			para(coluna = 0; coluna < aux1; coluna++)
			{
				para(linha = 0; linha < aux2; linha++)
				{
					se(nomes[linha][coluna] != "")
					{
						escreva("Passageiro(a): ", nomes[linha][coluna], " / Fila: ", linha, " Poltrona: ", coluna, "\n")
					}
				}
			}
		}
		leia(break)
		limpa()
		inicio()
	}
	funcao pesquisar_nome()
	{
		inteiro valor = 0
		cadeia pesquisa
		limpa()
		cabecario()
		escreva("Nome do passageiro que deseja procurar: ")
		leia(pesquisa)
		pesquisa = Texto.caixa_alta(pesquisa)
		se(pesquisa == "")
		{
			limpa()
			cabecario()
			escreva ("Não encontrado")
			Util.aguarde(1300)
			limpa()
			inicio()
		}
		limpa()
		inteiro aux1, aux2
		aux1 = coluna
		aux2 = linha
		cabecario()
		para(coluna = 0; coluna < aux1; coluna++)
		{
			para(linha = 0; linha < aux2; linha++)
			{
				se(nomes[linha][coluna] == pesquisa)
				{
					escreva("Passageiro(a): ", nomes[linha][coluna], " / Fila: ", linha, " Poltrona: ", coluna, "\n")
					valor = 1
					leia(break)
				}
			}
		}
		se(valor == 0)
		{
			limpa()
			cabecario()
			escreva ("Não encontrado")
			Util.aguarde(1300)
		}
		limpa()
		inicio()
	}
	funcao porcentagem_disp()
	{
		limpa()
		cabecario()
		escreva("Poltronas disponíveis - ", assentos_disp, "\n")
		escreva("Poltronas reservadas - ", assentos_reserv, "\n")
		//
		se(assentos_reserv == assentos_total e assentos_total != 0)
		{
			escreva("\n100% de Poltronas reservadas")
		}
		se(assentos_disp == assentos_total e assentos_total != 0)
		{
			escreva("\n100% de Poltronas disponiveis")
		}
		se(assentos_disp == 0)
		{
			escreva("\n0% de Poltronas disponiveis")
		}
		se(assentos_reserv == 0)
		{
			escreva("\n0% de Poltronas reservadas")
		}						
		se(assentos_reserv < assentos_total e assentos_reserv != 0)// % disponivel
		{
			real x, y, z
			x = assentos_total - assentos_reserv
			y = assentos_total
			z = x / y
			z = z * 100
			escreva("\n", z, "% de Poltronas disponiveis")
		} 	
		se(assentos_disp < assentos_total e assentos_disp != 0)// % reservada
		{
			real x, y, z 
			x = assentos_disp - assentos_total
			y = assentos_total
			z = x / y
			z = z * 100
			z = z * -1
			escreva("\n", z, "% de Poltronas reservadas")
		}		
		leia(break)
		limpa()
		inicio()
		
	}
	funcao sair()
	{
		limpa()
		escreva("Saindo. . .")
		Util.aguarde(1300)
		limpa()
	}
	funcao cabecario()
	{
		escreva("                               Sweet Flight    	     \n")
		escreva("                                 company   	     \n")
		escreva("---------------------------------------------------------------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2213; 
 * @DOBRAMENTO-CODIGO = [47, 102, 151, 206, 239, 284, 331];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
