programa
{
	inclua biblioteca Util --> u
	
	const inteiro vetor = 6
	inteiro opcao, numero[vetor], ponteiro1 = 0, ponteiro2 = 0, temp = 0
	cadeia pausa
	
	funcao inicio()
	{
		para(ponteiro1 = 0; ponteiro1 < vetor; ponteiro1++)
		{
			se(ponteiro1 == vetor-1)
			{
				escreva(numero[ponteiro1], ".\n")
			}
			se(ponteiro1 < vetor-1)
			{
				escreva(numero[ponteiro1], " - ")
			}
			
		}
		escreva("---------------------------\n")
		escreva(" 1 - numero automatico\n\n")
		escreva(" 2 - numero manual\n\n")
		escreva(" 3 - ordenar decrescentemente\n\n")
		escreva(" 4 - ordenar crescentemente\n\n")
		escreva(" 5 - sair\n\n")
		escreva(" opção: ")
		leia(opcao)
		escolha(opcao)
		{

					caso 1: 	addnumero_auto()
							pare
							
					caso 2:	addnumero_manual()
							pare
							
					caso 3:	ordene_menor()
							pare

					caso 4:	ordene_maior()
							pare
							
					caso 5: 	sair()
							pare
							
					caso contrario:	limpa()
									inicio()
									pare
					
		}
		
	}
	funcao addnumero_manual()
	{
		limpa()
		para(ponteiro1 = 0; ponteiro1 < vetor; ponteiro1++)
		{
			escreva(ponteiro1, "/", vetor, "\n")
			leia(numero[ponteiro1])
			limpa()
		}
		inicio()
	}
	funcao addnumero_auto()
	{
		limpa()
		para(ponteiro1 = 0; ponteiro1 < vetor; ponteiro1++)
		{
			numero[ponteiro1] = u.sorteia(0, 40)
			limpa()
		}

		inicio()
	}
	//ordenar
	funcao ordene_maior()
	{
		limpa()
		para(ponteiro1 = 0; ponteiro1 < vetor-1; ponteiro1++)
		{
			para(ponteiro2 = 0; ponteiro2 < vetor-1; ponteiro2++)
			{
				se(numero[ponteiro2] > numero[ponteiro2+1])
				{
					temp = numero[ponteiro2]
					numero[ponteiro2] = numero[ponteiro2+1]
					numero[ponteiro2+1] = temp
				}
			}
		}

		inicio()
	}
	funcao ordene_menor()
	{
		limpa()
		para(ponteiro1 = 0; ponteiro1 < vetor-1; ponteiro1++)
		{
			para(ponteiro2 = 0; ponteiro2 < vetor-1; ponteiro2++)
			{
				se(numero[ponteiro2] < numero[ponteiro2+1])
				{
					temp = numero[ponteiro2]
					numero[ponteiro2] = numero[ponteiro2+1]
					numero[ponteiro2+1] = temp
				}
			}
		}
	
		inicio()
	}
	/*funcao listar()
	{
		limpa()
		para(ponteiro1 = 0; ponteiro1 < vetor; ponteiro1++)
		{
			se(ponteiro1 == vetor-1)
			{
				escreva(numero[ponteiro1], ".\n")
			}
			se(ponteiro1 < vetor-1)
			{
				escreva(numero[ponteiro1], " - ")
			}
			
		}
		escreva("---------------------------\n")
		inicio()
	}*/
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
 * @POSICAO-CURSOR = 645; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 5, 15, 5}-{ponteiro1, 6, 31, 9}-{ponteiro2, 6, 46, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */