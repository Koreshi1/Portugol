programa
{
	inclua biblioteca Util
		const inteiro tamanho = 10
	
	//algoritimo mergesort
	funcao inicio()
	{
		inteiro i, vetor[tamanho]
		//inteiro vetor[tamanho] = {8, 7, 6, 5, 4, 3, 2, 1, 60, 23, 24, 12, 58, 83, 72}
		para(i = 0; i < tamanho; i++)
		{
			vetor[i] = Util.sorteia(0, 99)
		}
		escreva("vetor original: ")
		imprime(vetor)
		escreva("\n")
		
		mergesort(vetor, 0, tamanho - 1)
		
		escreva("\n\nvetor ordenado: ")
		imprime(vetor)
		escreva("\n")
		
		
	}
	funcao mergesort(inteiro vetor[], inteiro ini, inteiro fim)
	{
		inteiro meio, i, j, k, aux[tamanho]
		//tamanho do vetor
		se (ini < fim)
		{
			meio = (ini + fim)/2
			mergesort(vetor, ini, meio)
			mergesort(vetor, meio+1, fim)
			
			i = ini
			j = meio +1
			k = ini

			enquanto(i <= meio e j <= fim)
			{
				se(vetor[i] < vetor[j])
				{
					aux[k] = vetor[i]
					i++
					k++
				}
				senao
				{
					aux[k] = vetor[j]
					j++ 
					k++ 
				}
			}
			enquanto(i <= meio)
			{
				aux[k] = vetor[i]
				i++
				k++
			}
			enquanto(j <= fim)
			{
				aux[k] = vetor[j]
				j++
				k++
			}
			para(i = ini; i <= fim; i++)
			{
				vetor[i] = aux[i]
			}
			escreva("\n", ini, " até ", fim, " - ")
			imprime(vetor)
			
		}
	}
	funcao imprime(inteiro vetor[])
	{
		inteiro i
		para(i = 0; i < tamanho; i++)
		{
			escreva(vetor[i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 705; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */