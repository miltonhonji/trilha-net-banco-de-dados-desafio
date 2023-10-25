USE Filmes
GO

--Exercício 1
SELECT Nome, Ano FROM Filmes

--Exercício 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--Exercício 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE 'De Volta para o Futuro%'

--Exercício 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--Exercício 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--Exercício 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 500

--Exercício 7
SELECT 
Ano, 
COUNT (*) As 'Quantidade' 
FROM Filmes
WHERE Ano <> 0
GROUP BY Ano
ORDER BY Quantidade DESC

--Exercício 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

--Exercício 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome 

--Exercício 10
SELECT 
	fil.Nome,
	gen.Genero
FROM FilmesGenero fge
INNER JOIN Filmes fil ON fge.IdFilme = fil.Id
INNER JOIN Generos gen ON fge.IdGenero = gen.Id

--Exercício 11
SELECT 
	fil.Nome,
	gen.Genero
FROM FilmesGenero fge
INNER JOIN Filmes fil ON fge.IdFilme = fil.Id
INNER JOIN Generos gen ON fge.IdGenero = gen.Id
WHERE gen.Genero Like 'Mistério'

--Exercício 12
SELECT
fil.Nome,
ato.PrimeiroNome,
ato.UltimoNome,
elf.Papel
FROM ElencoFilme elf
INNER JOIN Atores ato ON elf.IdAtor = ato.Id
INNER JOIN Filmes fil ON elf.IdFilme = fil.Id